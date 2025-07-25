<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\PageTranslation;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Occasion;
use App\Models\BusinessSetting;
use App\Models\Banner;
use App\Models\Product;
use App\Models\Contacts;
use App\Models\Project;
use App\Models\RequestAccess;
use App\Models\Service;
use App\Models\Subscriber;
use Illuminate\Support\Str;
use App\Models\User;
use Storage;
use File;
use Illuminate\Support\Facades\Hash;

class PageController extends Controller
{
    public function index(Request $request)
    {
        $pages = \App\Models\Page::where('status', 1)->orderBy('slug', 'asc')->get();

        return view('backend.website_settings.pages.index', compact('pages'));
    }

    public function create()
    {
        return view('backend.website_settings.pages.create');
    }

    public function store(Request $request)
    {

        $page = new Page;
        $page->title = $request->title;
        if (Page::where('slug', preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug)))->first() == null) {
            $page->slug             = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
            $page->type             = "custom_page";
            $page->content          = $request->content;
            $page->meta_title       = $request->meta_title;
            $page->meta_description = $request->meta_description;
            $page->keywords         = $request->keywords;
            $page->meta_image       = $request->meta_image;
            $page->save();

            $page_translation           = PageTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'page_id' => $page->id]);
            $page_translation->title    = $request->title;
            $page_translation->content  = $request->content;
            $page_translation->save();

            flash(translate('New page has been created successfully'))->success();
            return redirect()->route('website.pages');
        }

        flash(translate('Slug has been used already'))->warning();
        return back();
    }
    public function show($id) {}
    public function edit(Request $request, $id)
    {
        $lang = $request->lang;
        $page_name = $request->page;
        $page = Page::where('type', $id)->first();
        if ($page != null) {
            $page_id = $page->id;
            if ($id == 'home') {

                $categories = Category::where('parent_id', 0)->where('is_active', 1)->with('childrenCategories')->get();

                $products = Product::select('id', 'name')->where('published', 1)->get();
                $brands = Brand::where('is_active', 1)->orderBy('name', 'asc')->get();
                $services = Service::where('status', 1)->orderBy('name', 'asc')->get();
                $projects = Project::where('status', 1)->orderBy('name', 'asc')->get();

                return view('backend.website_settings.pages.home_page_edit', compact('page', 'services', 'categories', 'brands', 'products', 'lang', 'page_id', 'projects'));
            } else if ($id == 'blogs' || $id == 'product_list' || $id == 'service_list') {
                return view('backend.website_settings.pages.blog_listing', compact('page', 'lang', 'page_id'));
            } else if ($id == 'contact_us') {
                return view('backend.website_settings.pages.contact_us', compact('page', 'lang', 'page_id'));
            } else if ($id == 'about_us') {
                return view('backend.website_settings.pages.about_us', compact('page', 'lang', 'page_id'));
            } else if ($id == 'brands_list' || $id == 'faq') {
                return view('backend.website_settings.pages.plist', compact('page', 'lang', 'page_id'));
            } else {
                return view('backend.website_settings.pages.edit', compact('page', 'lang', 'page_id'));
            }
        }
        abort(404);
    }

    public function update(Request $request, $id)
    {

        // return response()->json($request->all());

        $page = Page::findOrFail($id);
        if ($page) {
            if ($request->hasfile('image')) {
                $photo = uploadImage('page', $request->image, 'image_1');
                $page->image = $photo;
                $page->save();
            }

            $page->image1               = $request->has('image1') ? $request->image1 : NULL;
            $page->image2               = $request->has('image2') ? $request->image2 : NULL;
            $page->image3               = $request->has('image3') ? $request->image3 : NULL;
            $page->save();

            $page_translation                       = PageTranslation::firstOrNew(['lang' => $request->lang, 'page_id' => $page->id]);
            $page_translation->title                = $request->title;
            $page_translation->content              = $request->has('content') ? $request->content : NULL;
            $page_translation->sub_title            = $request->has('sub_title') ? $request->sub_title : NULL;
            $page_translation->title1               = $request->has('title1') ? $request->title1 : NULL;
            $page_translation->title2               = $request->has('title2') ? $request->title2 : NULL;
            $page_translation->title3               = $request->has('title3') ? $request->title3 : NULL;
            $page_translation->heading1             = $request->has('heading1') ? $request->heading1 : NULL;
            $page_translation->content1             = $request->has('content1') ? $request->content1 : NULL;
            $page_translation->heading2             = $request->has('heading2') ? $request->heading2 : NULL;
            $page_translation->content2             = $request->has('content2') ? $request->content2 : NULL;
            $page_translation->heading3             = $request->has('heading3') ? $request->heading3 : NULL;
            $page_translation->content3             = $request->has('content3') ? $request->content3 : NULL;
            $page_translation->content4             = $request->has('content4') ? $request->content4 : NULL;
            $page_translation->content5             = $request->has('content5') ? $request->content5 : NULL;
            $page_translation->heading4             = $request->has('heading4') ? $request->heading4 : NULL;
            $page_translation->heading5             = $request->has('heading5') ? $request->heading5 : NULL;
            $page_translation->heading6             = $request->has('heading6') ? $request->heading6 : NULL;
            $page_translation->heading7             = $request->has('heading7') ? $request->heading7 : NULL;
            $page_translation->heading8             = $request->has('heading8') ? $request->heading8 : NULL;
            $page_translation->heading9             = $request->has('heading9') ? $request->heading9 : NULL;
            $page_translation->heading10             = $request->has('heading10') ? $request->heading10 : NULL;
            $page_translation->meta_title           = $request->meta_title;
            $page_translation->meta_description     = $request->meta_description;
            $page_translation->og_title             = $request->og_title;
            $page_translation->og_description       = $request->og_description;
            $page_translation->twitter_title        = $request->twitter_title;
            $page_translation->twitter_description  = $request->twitter_description;
            $page_translation->keywords             = $request->keywords;

            $page_translation->save();

            flash(trans('messages.page') . ' ' . trans('messages.updated_msg'))->success();
            return redirect()->route('website.pages');
        }

        flash(trans('messages.not_found'))->warning();
        return back();
    }

    public function enquiries()
    {
        $query = Contacts::latest();
        $contact = $query->paginate(20);
        return view('backend.contact', compact('contact'));
    }

    public function accessRequests()
    {
        $query = RequestAccess::latest();
        $requests = $query->paginate(20);
        return view('backend.access-requests', compact('requests'));
    }


    public function acceptRequest($id)
    {

        $enquiry = RequestAccess::findOrFail($id);

        if ($enquiry->user_created) {
            return back()->with('error', 'User already created for this enquiry.');
        }

        if (User::where('email', $enquiry->email)->exists()) {
            return back()->with('error', 'This email is already used by another user.');
        }

        $password = Str::random(8);

        try {
            $user = User::create([
                'name'      => $enquiry->name,
                'email'     => $enquiry->email,
                'phone'     => $enquiry->phone,
                'password'  => Hash::make($password),
                'access_key' => $password,
                'user_type' => 'customer',
            ]);
        } catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }

        // Mail::send('emails.welcome_user', [
        //     'name' => $user->name,
        //     'email' => $user->email,
        //     'password' => $password
        // ], function ($message) use ($user) {
        //     $message->to($user->email, $user->name)
        //         ->subject('Welcome to our platform');
        // });

        $enquiry->user_created = true;
        $enquiry->access_key = $password;

        $enquiry->save();

        flash(trans('messages.contact') . ' ' . trans('messages.updated_msg'))->success();


        return redirect()->back()->with('success', 'User has been created and credentials have been sent.');
    }

    public function destroy($id)
    {
        $page = Page::findOrFail($id);
        foreach ($page->page_translations as $key => $page_translation) {
            $page_translation->delete();
        }
        if (Page::destroy($id)) {
            flash(translate('Page has been deleted successfully'))->success();
            return redirect()->back();
        }
        return back();
    }

    public function show_custom_page($slug)
    {
        $page = Page::where('slug', $slug)->first();
        if ($page != null) {
            return view('frontend.custom_page', compact('page'));
        }
        abort(404);
    }
    public function mobile_custom_page($slug)
    {
        $page = Page::where('slug', $slug)->first();
        if ($page != null) {
            return view('frontend.m_custom_page', compact('page'));
        }
        abort(404);
    }

    public function delete_image(Request $request)
    {
        $page = Page::where('id', $request->id)->first();
        $fil_url = str_replace('/storage/', '', $request->url);
        $fil_url = $path = Storage::disk('public')->path($fil_url);
        if (File::exists($fil_url)) {
            $info = pathinfo($fil_url);
            $file_name = basename($fil_url, '.' . $info['extension']);
            $ext = $info['extension'];

            unlink($fil_url);

            $page_img = explode(',', $page->image);
            $page_img =  array_diff($page_img, [$request->url]);
            if ($page_img) {
                $page->image = implode(',', $page_img);
            } else {
                $page->image = null;
            }

            $page->save();
            return 1;
        } else {
            return 0;
        }
    }

    public function subscribers()
    {
        $subscribers = Subscriber::orderBy('created_at', 'desc')->paginate(15);
        return view('backend.subscribers', compact('subscribers'));
    }


    public function subscribersDestroy($id)
    {
        Subscriber::destroy($id);
        flash(trans('messages.subscriber') . ' ' . trans('messages.deleted_msg'))->success();
        return redirect()->route('subscribers.index');
    }
}
