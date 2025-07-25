<?php

use App\Models\BusinessSetting;
use App\Utility\CategoryUtility;
use App\Models\ProductAttributes;
use App\Models\Product;
use App\Models\AttributeValue;
use App\Models\ProductStock;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Service;
use App\Models\Page;
use App\Models\Wishlist;
use App\Models\Cart;
use App\Models\RecentlyViewedProduct;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Request;
// use DB;

function is_active($route, $output = 'menu-active')
{
    if (is_array($route)) {
        return in_array(Route::currentRouteName(), $route) ? $output : '';
    }
    return Route::currentRouteName() === $route ? $output : '';
}

function setGuestToken()
{
    $guestToken = Cookie::get('guest_token', Str::uuid());
    Cookie::queue('guest_token', $guestToken, 60 * 24 * 7); // 7 days
}

function getFooter()
{
    $data['footer_categories'] = Cache::rememberForever('footer_categories', function () {
        $categories = get_setting('footer_categories');
        if ($categories) {
            $details = Category::whereIn('id', json_decode($categories))->where('is_active', 1)
                ->get();
            return $details;
        }
    });

    $data['footer_services'] = Cache::rememberForever('footer_services', function () {
        $occasions = get_setting('footer_services');
        if ($occasions) {
            $details = Service::whereIn('id', json_decode($occasions))->where('status', 1)
                ->get();
            return $details;
        }
    });

    return $data;
}

function trackRecentlyViewed($productId)
{
    $guestToken = Cookie::get('guest_token', Str::uuid());
    // Check if the user is authenticated
    if (auth()->check()) {
        $userId = auth()->id();
        if ($guestToken) {
            RecentlyViewedProduct::where('guest_token', $guestToken)
                ->update([
                    'user_id' => $userId,
                    'guest_token' => null
                ]);
        }

        RecentlyViewedProduct::updateOrCreate(
            ['user_id' => $userId, 'product_id' => $productId],
            ['updated_at' => now()]
        );
    } else {
        // Get or create a guest token

        Cookie::queue('guest_token', $guestToken, 60 * 24 * 7); // 7 days

        // Save for guest user
        RecentlyViewedProduct::updateOrCreate(
            ['guest_token' => $guestToken, 'product_id' => $productId],
            ['updated_at' => now()]
        );
    }
}

function getRecentlyViewedProducts()
{
    if (auth()->check()) {
        $recentlyViewedIds = RecentlyViewedProduct::where('user_id', auth()->id())
            ->orderBy('updated_at', 'desc')
            ->pluck('product_id')
            ->toArray();
    } else {
        $guestToken = Cookie::get('guest_token', null);
        if ($guestToken) {
            $recentlyViewedIds = RecentlyViewedProduct::where('guest_token', $guestToken)
                ->orderBy('updated_at', 'desc')
                ->pluck('product_id')
                ->toArray();
        } else {
            $recentlyViewedIds = [];
        }
    }

    return Product::whereIn('id', $recentlyViewedIds)->get();
}

//$this->mergeGuestToUser(auth()->id(), Cookie::get('guest_token'));

function mergeGuestToUser($userId, $guestToken)
{
    if (!$guestToken) {
        return;
    }

    $guestProducts = RecentlyViewedProduct::where('guest_token', $guestToken)->get();

    foreach ($guestProducts as $guestProduct) {
        RecentlyViewedProduct::updateOrCreate(
            ['user_id' => $userId, 'product_id' => $guestProduct->product_id],
            ['updated_at' => $guestProduct->updated_at]
        );
    }

    // Delete guest data
    RecentlyViewedProduct::where('guest_token', $guestToken)->delete();

    // Remove guest token cookie
    Cookie::queue(Cookie::forget('guest_token'));
}

if (!function_exists('getBaseURL')) {
    function getBaseURL()
    {
        $root = '//' . $_SERVER['HTTP_HOST'];
        $root .= str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);

        return $root;
    }
}


if (!function_exists('getFileBaseURL')) {
    function getFileBaseURL()
    {
        if (env('FILESYSTEM_DRIVER') == 's3') {
            return env('AWS_URL') . '/';
        } else {
            return app('url')->asset('storage') . '/';
            // return getBaseURL();
        }
    }
}

//filter products based on vendor activation system
if (!function_exists('filter_products')) {
    function filter_products($products)
    {
        $verified_sellers = verified_sellers_id();
        if (get_setting('vendor_system_activation') == 1) {
            return $products->where('approved', '1')->where('published', '1')->where('auction_product', 0)->orderBy('created_at', 'desc')->where(function ($p) use ($verified_sellers) {
                $p->where('added_by', 'admin')->orWhere(function ($q) use ($verified_sellers) {
                    $q->whereIn('user_id', $verified_sellers);
                });
            });
        } else {
            return $products->where('published', '1')->where('auction_product', 0)->where('added_by', 'admin');
        }
    }
}

function getProductAttributes($attributes)
{
    $attributeArr = [];
    $lang = getActiveLanguage();
    if ($attributes) {
        foreach ($attributes as $attr) {
            $attributeArr[] = [
                "name" => $attr->attributes?->getTranslation('name', $lang),
                "value" => $attr->attribute_value?->getTranslatedName('value'),
            ];
        }
    }
    return  $attributeArr;
}

if (!function_exists('verified_sellers_id')) {
    function verified_sellers_id()
    {
        return Cache::rememberForever('verified_sellers_id', function () {
            // return App\Models\Seller::where('verification_status', 1)->pluck('user_id')->toArray();
        });
    }
}

if (!function_exists('get_setting')) {
    function get_setting($key, $default = null, $lang = false)
    {
        $settings = Cache::remember('business_settings', 86400, function () {
            return BusinessSetting::all();
        });

        if ($lang == false) {
            $setting = $settings->where('type', $key)->first();
        } else {
            $setting = $settings->where('type', $key)->where('lang', $lang)->first();
            $setting = !$setting ? $settings->where('type', $key)->first() : $setting;
        }
        return $setting == null ? $default : $setting->value;
    }
}

if (!function_exists('static_asset')) {
    /**
     * Generate an asset path for the application.
     *
     * @param string $path
     * @param bool|null $secure
     * @return string
     */
    function static_asset($path, $secure = null)
    {
        return app('url')->asset($path, $secure);
    }
}

//return file uploaded via uploader
if (!function_exists('uploaded_asset')) {
    function uploaded_asset($id)
    {
        if ($id && ($asset = \App\Models\Upload::find($id)) != null) {
            return $asset->external_link == null ? storage_asset($asset->file_name) : $asset->external_link;
        }

        return app('url')->asset('assets/img/placeholder.jpg');
    }
}

if (!function_exists('home_base_price')) {
    function home_base_price($product, $formatted = true)
    {
        $price = $product->unit_price;
        $tax = 0;

        if ($product->taxes) {
            foreach ($product->taxes as $product_tax) {
                if ($product_tax->tax_type == 'percent') {
                    $tax += ($price * $product_tax->tax) / 100;
                } elseif ($product_tax->tax_type == 'amount') {
                    $tax += $product_tax->tax;
                }
            }
        }

        $price += $tax;
        return $formatted ? format_price(convert_price($price)) : $price;
    }
}

//formats currency
if (!function_exists('format_price')) {
    function format_price($price)
    {
        if (get_setting('decimal_separator') == 1) {
            $fomated_price = number_format($price, get_setting('no_of_decimals'));
        } else {
            $fomated_price = number_format($price, get_setting('no_of_decimals'), ',', ' ');
        }

        if (get_setting('symbol_format') == 1) {
            return currency_symbol() . $fomated_price;
        } else if (get_setting('symbol_format') == 3) {
            return currency_symbol() . ' ' . $fomated_price;
        } else if (get_setting('symbol_format') == 4) {
            return $fomated_price . ' ' . currency_symbol();
        }
        return $fomated_price . currency_symbol();
    }
}

//converts currency to home default currency
if (!function_exists('convert_price')) {
    function convert_price($price)
    {
        if (Session::has('currency_code') && (Session::get('currency_code') != get_system_default_currency()->code)) {
            $price = floatval($price) / floatval(get_system_default_currency()->exchange_rate);
            $price = floatval($price) * floatval(Session::get('currency_exchange_rate'));
        }
        return $price;
    }
}

//gets currency symbol
if (!function_exists('currency_symbol')) {
    function currency_symbol()
    {
        // if (Session::has('currency_symbol')) {
        //     return Session::get('currency_symbol');
        // }
        // return get_system_default_currency()->symbol;
        return env('DEFAULT_CURRENCY');
    }
}

//highlights the selected navigation on admin panel
if (!function_exists('areActiveRoutes')) {
    function areActiveRoutes(array $routes, $output = "active")
    {
        foreach ($routes as $route) {
            if (Route::currentRouteName() == $route) return $output;
        }
    }
}

if (!function_exists('storage_asset')) {
    /**
     * Generate an asset path for the application.
     *
     * @param string $path
     * @param bool|null $secure
     * @return string
     */
    function storage_asset($path, $secure = null)
    {
        return app('url')->asset('storage/' . $path, $secure);
    }
}

if (!function_exists('formatBytes')) {
    function formatBytes($bytes, $precision = 2)
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');

        $bytes = max($bytes, 0);
        $pow = floor(($bytes ? log($bytes) : 0) / log(1024));
        $pow = min($pow, count($units) - 1);

        // Uncomment one of the following alternatives
        $bytes /= pow(1024, $pow);
        // $bytes /= (1 << (10 * $pow));

        return round($bytes, $precision) . ' ' . $units[$pow];
    }
}

function getAllCategories()
{
    return Cache::rememberForever('categoriesTree', function () {
        return CategoryUtility::getSidebarCategoryTree();
    });
}

function cleanSKU($sku)
{
    $sku = str_replace(' ', '', $sku);
    $sku = preg_replace('/[^a-zA-Z0-9_-]/', '', $sku);
    return $sku;
}

if (!function_exists('get_product_image')) {
    function get_product_image($path, $size = 'full')
    {
        if ($path) {
            if ($size == 'full') {
                return app('url')->asset($path);
            } else {
                $fileName = pathinfo($path)['filename'];
                $ext   = pathinfo($path)['extension'];
                $dirname   = pathinfo($path)['dirname'];
                $r_path = "{$dirname}/" . $fileName . "_{$size}px" . ".{$ext}";
                return app('url')->asset($r_path);
            }
        }

        return app('url')->asset('admin_assets/assets/img/placeholder.jpg');
    }
}

function get_product_attrValue($attrValue, $productStockId)
{
    $query = ProductAttributes::where('product_varient_id', $productStockId)
        ->where('attribute_id', $attrValue)
        ->first();
    $value = '';
    if ($query) {
        $value = $query->attribute_value_id;
    }
    return $value;
}


function get_attribute_values($attribute_id, $proAttr)
{
    $all_attribute_values = AttributeValue::with('attribute')->where('is_active', 1)->where('attribute_id', $attribute_id)->get();

    $html = '';

    foreach ($all_attribute_values as $row) {
        $selected = ($proAttr == $row->id) ? 'selected' : '';
        $html .= '<option value="' . $row->id . '" ' . $selected . '>' . $row->getTranslatedName('value') . '</option>';
    }

    return $html;
}

function getSidebarCategoryTree()
{
    $all_cats = Category::select([
        'id',
        'parent_id',
        'name',
        'level',
        'slug',
        'icon'
    ])->with(['child', 'iconImage'])->withCount('products')->where('parent_id', 0)->where('is_active', 1)->orderBy('categories.name', 'ASC')->get();
    foreach ($all_cats as $categ) {
        $categ->icon = ($categ->iconImage?->file_name) ? storage_asset($categ->iconImage->file_name) : app('url')->asset('admin_assets/assets/img/placeholder.jpg');
        unset($categ->iconImage);
    }

    return $all_cats;
}

function getChildCategoryIds($parentId)
{
    // Get the parent category
    $parentCategory = Category::find($parentId);

    // If the parent category doesn't exist, return an empty array or handle as needed
    if (!$parentCategory) {
        return [];
    }

    // Recursively get all child category IDs
    $childIds = getChildCategoryIdsRecursive($parentCategory);

    return $childIds;
}

function getChildCategoryIdsRecursive($category)
{
    $childIds = [];

    if ($category->child) {
        foreach ($category->child as $child) {
            $childIds[] = $child->id;

            // Recursively get child category IDs for the current child
            $childIds = array_merge($childIds, getChildCategoryIdsRecursive($child));
        }
    }


    return $childIds;
}

//formats price to home default price with convertion
if (!function_exists('single_price')) {
    function single_price($price)
    {
        return format_price($price);
    }
}


function uploadImage($type, $imageUrl, $filename = null)
{
    $data_url = '';

    // try {
    $ext = $imageUrl->getClientOriginalExtension();

    if ($type == 'page') {
        $path = 'pages/';
    } else {
        $path = 'others/';
    }

    $filename = $path . $filename . '.' . $ext;

    $imageContents = file_get_contents($imageUrl);

    // Save the original image in the storage folder
    Storage::disk('public')->put($filename, $imageContents);
    $data_url = Storage::url($filename);

    return $data_url;
}

function getDirection()
{
    if (getActiveLanguage() == 'ar') {
        return 'rtl';
    }
    return 'ltr';
}

function getActiveLanguage()
{
    if (Session::exists('locale')) {
        return Session::get('locale');
    }
    return 'en';
}

function getProductOfferPrice($product)
{

    $data["original_price"] = $product->min_price;
    $discountPrice = $product->min_price;

    $offertag =  '';
    $tax = 0;

    $discount_applicable = false;
    if ($product->discount_start_date != NULL && $product->discount_end_date != NULL) {
        if (strtotime(date('d-m-Y H:i:s')) >= $product->discount_start_date && strtotime(date('d-m-Y H:i:s')) <= $product->discount_end_date) {
            $discount_applicable = true;
        }
    }

    if ($discount_applicable) {
        if ($product->discount_type == 'percent') {
            $discountPrice -= ($discountPrice * $product->discount) / 100;
            $offertag = $product->discount . '% OFF';
        } elseif ($product->discount_type == 'amount') {
            $discountPrice -= $product->discount;
            $offertag = 'AED ' . $product->discount . ' OFF';
        }
    }

    $data["discounted_price"] = $discountPrice;
    $data["offer_tag"]  = $offertag;

    return $data;
}

function getProductPrice($productStock)
{

    $data["original_price"] = $productStock->price;
    $discountPrice = $productStock->offer_price ?? $productStock->price;

    $offertag =  '';
    $tax = 0;

    $discount_applicable = false;
    if ($productStock->product->discount_start_date != NULL && $productStock->product->discount_end_date != NULL) {
        if (strtotime(date('d-m-Y H:i:s')) >= $productStock->product->discount_start_date && strtotime(date('d-m-Y H:i:s')) <= $productStock->product->discount_end_date) {
            $discount_applicable = true;
        }
    }

    if ($discount_applicable) {
        if ($productStock->product->discount_type == 'percent') {
            $discountPrice -= ($discountPrice * $productStock->product->discount) / 100;
            $offertag = $productStock->product->discount . '% OFF';
        } elseif ($productStock->product->discount_type == 'amount') {
            $discountPrice -= $productStock->product->discount;
            $offertag = 'AED ' . $productStock->product->discount . ' OFF';
        }
    }

    $data["discounted_price"] = $discountPrice;
    $data["offer_tag"]  = $offertag;

    return $data;
}

// function reduceProductQuantity($productQuantities){
//     if(!empty($productQuantities)){
//         foreach($productQuantities as $key => $value){
//             $product_stock = ProductStock::where('product_id', $key)->first();
//             $product_stock->qty -= $value;
//             $product_stock->save();
//         }
//     }
// }

function reduceProductStockQuantities($productQuantities)
{
    if (!empty($productQuantities)) {
        foreach ($productQuantities as $productStockId => $qtyToDeduct) {
            $product_stock = \App\Models\ProductStock::find($productStockId);
            if ($product_stock) {
                $product_stock->qty = max(0, $product_stock->qty - $qtyToDeduct);
                $product_stock->save();
            }
        }
    }
}

function getPageData($type)
{
    $page = Page::where('type', $type)->first();
    return $page;
}

function getUser()
{
    $user = array(
        'users_id_type' => 'temp_user_id',
        'users_id' => null
    );

    if (auth()->user()) {
        $user = array(
            'users_id_type' => 'user_id',
            'users_id' => auth()->user()->id
        );
    } else {
        $user = array(
            'users_id_type' => 'temp_user_id',
            'users_id' => Request::cookie('guest_token')
        );
    }

    return $user;
}

function cartCount()
{
    $guest_token = request()->cookie('guest_token') ?? uniqid('guest_', true);
    if (auth()->user()) {
        $user_id = auth()->user()->id;
        if ($guest_token) {

            // Get all guest cart items
            $guestCartItems = Cart::where('temp_user_id', $guest_token)->get();

            foreach ($guestCartItems as $guestItem) {
                // Check if the logged-in user already has the same product in the cart
                $existingItem = Cart::where('user_id', $user_id)
                    ->where('product_id', $guestItem->product_id)
                    ->first();

                if ($existingItem) {
                    // Update quantity
                    $existingItem->quantity += $guestItem->quantity;
                    $existingItem->save();

                    // Delete the guest cart item
                    $guestItem->delete();
                } else {
                    // Assign to logged-in user
                    $guestItem->user_id = $user_id;
                    $guestItem->temp_user_id = null;
                    $guestItem->save();
                }
            }
        }
    }
    $user = getUser();
    $count = 0;
    if ($user['users_id'] != '') {
        $count = Cart::where([
            $user['users_id_type'] => $user['users_id']
        ])->count();
    }

    return $count;
}

function wishlistCount()
{
    if (auth()->user()) {
        return Wishlist::where('user_id', auth()->user()->id)->count();
    } else {
        // return Wishlist::where('temp_user_id', Request::cookie('guest_token'))->count();
        return 0;
    }
}

function isWishlisted($productId)
{
    return Wishlist::where('user_id', Auth::id())
        ->where('product_id', $productId)
        ->exists();
}

function productWishlisted($sku, $product_slug)
{
    $variantProduct = ProductStock::leftJoin('products as p', 'p.id', '=', 'product_stocks.product_id')
        ->where('product_stocks.sku', $sku)
        ->where('p.slug', $product_slug)
        ->select('product_stocks.*')->first()?->toArray();
    if (!empty($variantProduct)) {
        $product_id         = $variantProduct['product_id'] ?? null;
        $product_stock_id   = $variantProduct['id'] ?? null;
        if ($product_id != null &&  $product_stock_id != null) {
            // Check if product already exist in wishlist
            $checkWhishlist =   Wishlist::where('user_id', Auth::id())
                ->where('product_id', $product_id)
                ->where('product_stock_id', $product_stock_id)->count();
            return $checkWhishlist;
        }
        return 0;
    } else {
        return 0;
    }
}

function getProductSkuFromSlug($slug)
{
    $product = Product::where('slug', $slug)->first();
    return $product->sku ?? null;
}

function getCategoryHeader()
{
    $data['header_categories'] = Cache::rememberForever('header_categories', function () {
        $categories = get_setting('header_categories');
        if ($categories) {
            $details = Category::whereIn('id', json_decode($categories))->where('is_active', 1)
                ->get();
            return $details;
        }
    });

    $data['header_occasions'] = [];

    $data['header_brands'] = Cache::rememberForever('header_brands', function () {
        $header_brands = get_setting('header_brands');
        if ($header_brands) {
            $details = Brand::whereIn('id', json_decode($header_brands))->where('is_active', 1)
                ->get();
            return $details;
        }
    });

    return $data;
}

function generateUniqueSKU()
{
    do {
        $sku = random_int(10000000, 99999999); // Generates an 8-digit number
    } while (Product::where('sku', $sku)->exists());

    return $sku;
}

function checkCartProduct($sku, $slug)
{
    $userId = Auth::id();
    $guestToken = request()->cookie('guest_token') ?? uniqid('guest_', true);

    if (auth()->user()) {
        $users_id_type = 'user_id';
    } else {
        $users_id_type = 'temp_user_id';
    }

    $product = ProductStock::leftJoin('products as p', 'p.id', '=', 'product_stocks.product_id')
        ->where('product_stocks.sku', $sku)
        ->where('p.slug', $slug)
        ->select('product_stocks.*')->first() ?? [];

    if (!empty($product)) {
        $product_id         = $product['product_id'] ?? null;
        $product_stock_id   = $product['id'] ?? null;

        $carts = Cart::where([
            $users_id_type => ($users_id_type == 'user_id') ? $userId  : $guestToken,
            'product_id' => $product_id,
            'product_stock_id' => $product_stock_id
        ])->first();

        if ($carts) {
            return true;
        } else {
            return false;
        }
    }
}

function getTagsFromRequest($request)
{
    $tags = array();
    if (isset($request->tags[0]) && $request->tags[0] != null) {
        foreach (json_decode($request->tags[0]) as $key => $tag) {
            array_push($tags, $tag->value);
        }
    }
    $implodedTags = implode(',', $tags);
    return [
        'tags' => $implodedTags,
        'tags_array' => $tags
    ];
}

if (!function_exists('renderProjects')) {
    function renderProjects($projects, $type)
    {
        $output = '<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">';
        foreach ($projects as $project) {
            $output .= '
                <a href="' . route('projects.show', $project['slug']) . '" class="group block relative overflow-hidden rounded-lg border border-primary/10 hover:border-primary/50 transition-all duration-500 p-2">
                    <div class="relative overflow-hidden rounded-lg">
                        <img src="'  . e($project['image']) .'"
                            alt="' . e($project['title']) . '"
                            class="w-full h-[300px] object-cover transition-transform duration-700 transform group-hover:scale-105 ' . ($type === 'upcoming' ? 'grayscale group-hover:grayscale-0' : '') . '" />
                        <div class="absolute inset-0 bg-black/30 opacity-0 group-hover:opacity-100 transition duration-500 ease-in-out z-10"></div>
                    </div>
                    <div class="mt-6">
                        <div class="text-lg md:text-2xl uppercase font-sans font-light leading-snug text-white group-hover:text-[#C5A26B] transition-colors duration-300">
                            ' . e($project['title']) . '
                        </div>
                        <p class="mt-2 text-sm text-white/70 leading-relaxed max-w-xl font-light">
                            ' . e($project['desc']) . '
                        </p>
                    </div>
                </a>';
        }
        $output .= '</div>';
        return $output;
    }
}
