<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use App\Models\Page;
use App\Models\PageTranslations;
use App\Models\PageSeos;
use App\Models\Brand;
use App\Models\HomeSlider;
use App\Models\Service;
use App\Models\BusinessSetting;
use App\Models\Subscriber;
use App\Models\Contacts;
use App\Models\Testimonials;
use App\Models\FaqCategory;
use App\Models\Blog;
use App\Mail\ContactEnquiry;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\JsonLdMulti;
use Artesaos\SEOTools\Facades\SEOTools;
use Illuminate\Support\Facades\URL;
use App\Http\Resources\WebHomeProductsCollection;
use App\Models\Project;
use App\Models\RequestAccess;
use Storage;
use Validator;
use Mail;
use DB;
use Hash;
use Cache;

class FrontendController extends Controller
{

    public function loadSEO($model)
    {
        SEOTools::setTitle($model['title']);
        OpenGraph::setTitle($model['title']);
        TwitterCard::setTitle($model['title']);

        SEOMeta::setTitle($model['meta_title'] ?? $model['title']);
        SEOMeta::setDescription($model['meta_description']);
        SEOMeta::addKeyword($model['keywords']);

        OpenGraph::setTitle($model['og_title']);
        OpenGraph::setDescription($model['og_description']);
        OpenGraph::setUrl(URL::full());
        OpenGraph::addProperty('locale', 'en_US');
        OpenGraph::addProperty('type', $model['og_type'] ?? 'website');
        OpenGraph::addImage($model['og_image'] ?? URL::to(asset('assets/img/logo.png')));

        JsonLd::setTitle($model['meta_title']);
        JsonLd::setDescription($model['meta_description']);
        JsonLd::setType('Page');

        TwitterCard::setTitle($model['twitter_title']);
        TwitterCard::setSite("@homeiq");
        TwitterCard::setDescription($model['twitter_description']);

        SEOTools::jsonLd()->addImage(URL::to(asset('assets/img/favicon.ico')));
    }

    public function loadDynamicSEO($model)
    {
        SEOTools::setTitle($model->title);
        OpenGraph::setTitle($model->title);
        TwitterCard::setTitle($model->title);

        SEOMeta::setTitle($model->seo_title ?? $model->title);
        SEOMeta::setDescription($model->seo_description);
        SEOMeta::addKeyword($model->keywords);

        OpenGraph::setTitle($model->og_title);
        OpenGraph::setDescription($model->og_description);
        OpenGraph::setUrl(URL::full());
        OpenGraph::addProperty('locale', 'en_US');

        JsonLd::setTitle($model->seo_title);
        JsonLd::setDescription($model->seo_description);
        JsonLd::setType('Page');

        TwitterCard::setTitle($model->twitter_title);
        TwitterCard::setSite("@homeiq");
        TwitterCard::setDescription($model->twitter_description);

        SEOTools::jsonLd()->addImage(URL::to(asset('assets/img/favicon.ico')));
    }

    public function home()
    {
        setGuestToken();
        $page = Page::where('type', 'home')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);

        $data['slider'] = Cache::rememberForever('homeSlider', function () {
            $sliders = HomeSlider::where('status', 1)->orderBy('sort_order', 'asc')->get();
            return $sliders;
        });

        $data['home_projects'] = Cache::remember('home_projects', 3600, function () {
            $project_ids = get_setting('home_projects');
            if ($project_ids) {
                $projects =  Project::where('status', 1)->whereIn('id', json_decode($project_ids))->orderBy('sort_order', 'asc')->limit(3)->get();
                return $projects;
            }
        });

        $data['home_services'] = Cache::remember('home_services', 3600, function () {
            $service_ids = get_setting('home_services');
            if ($service_ids) {
                $services =  Service::where('status', 1)->whereIn('id', json_decode($service_ids))->orderBy('sort_order', 'asc')->limit(3)->get();
                return $services;
            }
        });

        $data['testimonials'] = Cache::rememberForever('home_testimonials', function () {
            $testimonials = Testimonials::where('status', 1)->orderBy('sort_order', 'asc')->get();
            return $testimonials;
        });

        $data['blogs'] = Cache::rememberForever('home_blogs', function () {
            $details = Blog::where('status', 1)->orderBy('blog_date', 'desc')->limit(3)->get();
            return $details;
        });

        // return response()->json(['status' => true, 'data' => $data]);

        return view('pages.home', [
            'slider' => $data['slider'],
            'services' => $data['home_services'],
            'projects' => $data['home_projects'],
            'testimonials' => $data['testimonials'],
            'blogs' => $data['blogs'],
            'page' => $page,
            'lang' => $lang
        ]);
    }

    public function about()
    {
        $page = Page::where('type', 'about_us')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        return view('pages.about', compact('page', 'lang'));
    }

    public function services()
    {
        $page = Page::where('type', 'service_list')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        $services =  Service::where('status', 1)->orderBy('sort_order', 'ASC')->paginate(6);

        return view('pages.services', compact('page', 'lang', 'services'));
    }

    public function showService($slug)
    {
        $lang = getActiveLanguage();
        $service =  Service::where('status', 1)->where('slug', $slug)->first();

        $services = Service::where('status', 1)
            ->where('parent_id', $service->id)
            ->get();

        $page = Page::where('type', 'home')->first();

        // return response()->json([
        //     'service' => $service,
        //     'services' => $services,
        //     'lang' => $lang
        // ]);

        return view('pages.service-detail', [
            'service' => $service,
            'services' => $services,
            'lang' => $lang,
            'page' => $page,
        ]);
    }


    public function projects()
    {
        $main_page = Page::where('type', 'project_list')->first();
        $page = Page::where('type', 'home')->first();
        $lang = getActiveLanguage();

        $seo = [
            'title'     => $page->getTranslation('meta_title', $lang),
            'meta_title'    => $page->getTranslation('meta_title', $lang),
            'meta_description'  => $page->getTranslation('meta_description', $lang),
            'keywords'    => $page->getTranslation('keywords', $lang),
            'og_title'    => $page->getTranslation('og_title', $lang),
            'og_description'   => $page->getTranslation('og_description', $lang),
            'twitter_title'  => $page->getTranslation('twitter_title', $lang),
            'twitter_description' => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);

        $projects = Project::where('status', 1)
            ->orderBy('sort_order')
            ->get();

        $transformProject = function ($p) use ($lang) {
            return [
                'title'   => $p->getTranslation('name', $lang),
                'slug'  => $p->slug,
                'subtitle' => $p->subtitle ?? '',
                'desc'  => $p->subtitle ?? '',
                'image'   => $p->image ? uploaded_asset($p->image) : 'default.jpg',
                'place'   => $p->place ?? '',
                'type'  => $p->type ?? '',
                'gallery'  => $p->photos ? explode(',', $p->photos) : [],
                'stats'   => $p->highlights ? json_decode($p->highlights, true) : [],
                'description' => $p->getTranslation('description', $lang) ?? '',
                'hero'  => $p->hero ?? '',
                'feature'  => $p->feature ?? '',
            ];
        };

        $completedProjects = $projects->filter(fn($p) => $p->completion_status == '1')->map($transformProject);
        $upcomingProjects = $projects->filter(fn($p) => $p->completion_status == '0')->map($transformProject);

        return view('pages.projects', compact(
            'main_page',
            'page',
            'lang',
            'completedProjects',
            'upcomingProjects'
        ));
    }


    public function showProject($slug)
    {
        $lang = getActiveLanguage();
        $project =  Project::where('status', 1)->where('slug', $slug)->first();

        $projects = $project ? Project::where('status', 1)
            ->where('parent_id', $project->id)
            ->get() : null;

        $page = Page::where('type', 'home')->first();

        // return response()->json([
        //     'service' => $service,
        //     'services' => $services,
        //     'lang' => $lang
        // ]);
        $formattedProject = [
            'slug'  => $project->slug,
            'title' => $project->getTranslation('name', $lang),
            'subtitle' => $project->subtitle ?? '',
            'hero' => $project->photos ? explode(',', $project->photos)[0] : 'images/projects/default.jpg',
            'feature' => $project->image,
            'description' => $project->getTranslation('description', $lang) ?? '',
            'gallery' => $project->photos ? $project->photos : [],
            'stats' => $project->highlights ? json_decode($project->highlights, true) : [],
            'image' => $project->image ?? 'default.jpg',
            'project_type' => $project->completion_status == '1' ? 'completed' : 'upcoming',
            'type' => $project->tags,
            'place' => $project->place ?? '',
        ];

        // return response()->json([
        //     'project' => $formattedProject,
        // ]);

        return view('pages.project-detail', [
            'project' => $formattedProject,
            'projects' => $projects,
            'lang' => $lang,
            'page' => $page,
        ]);
    }


    public function blogs()
    {
        $page = Page::where('type', 'blogs')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        $blogs =  Blog::where('status', 1)->orderBy('blog_date', 'DESC')->paginate(6);

        return view('pages.blog', compact('page', 'lang', 'blogs'));
    }

    public function loadMoreBlogs(Request $request)
    {
        if ($request->ajax()) {
            // Get paginated results for the next page
            $blogs = Blog::where('status', 1)
                ->orderBy('blog_date', 'DESC')
                ->paginate(6, ['*'], 'page', $request->page);

            // Check if services exist and render the partial view
            if ($blogs->isEmpty()) {
                return response()->json(['html' => '', 'hasMore' => false]);
            }

            // Render the partial view and return it with a flag indicating if more pages are available
            $html = view('pages.blog_card', compact('blogs'))->render();

            return response()->json([
                'html' => $html,
                'hasMore' => $blogs->hasMorePages(),
            ]);
        }

        // Return a fallback if the request is not via AJAX
        return response()->json(['error' => 'Invalid request'], 400);
    }

    public function showBlog($slug)
    {
        $lang = getActiveLanguage();
        $blogs =  Blog::where('status', 1)->where('slug', $slug)->first();

        $seo = [
            'title'                 => $blogs->name,
            'meta_title'            => $blogs->meta_title,
            'meta_description'      => $blogs->meta_description,
            'keywords'              => $blogs->keywords,
            'og_title'              => $blogs->og_title,
            'og_description'        => $blogs->og_description,
            'og_type'               => 'article',
            'og_image'              => uploaded_asset(($blogs->image)),
            'twitter_title'         => $blogs->twitter_title,
            'twitter_description'   => $blogs->twitter_description,
        ];

        $this->loadSEO($seo);
        $recentBlogs = Blog::where('id', '!=', $blogs->id)->where('status', 1)
            ->orderBy('blog_date', 'desc')
            ->take(2)
            ->get();
        $previous = Blog::where('id', '<', $blogs->id)->where('status', 1)
            ->orderBy('blog_date', 'desc')
            ->first();

        // Get Next Blog (Newer)
        $next = Blog::where('id', '>', $blogs->id)->where('status', 1)
            ->orderBy('blog_date', 'asc')
            ->first();
        return view('pages.blog-details', ['blog' => $blogs, 'lang' => $lang, 'recentBlogs' => $recentBlogs, 'previousBlog' => $previous, 'nextBlog' => $next]);
    }

    public function terms()
    {
        $page = Page::where('type', 'terms')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        return view('pages.terms-conditions', compact('page', 'lang'));
    }

    public function privacy()
    {
        $page = Page::where('type', 'privacy_policy')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        return view('pages.privacy-policy', compact('page', 'lang'));
    }

    public function returnPolicy()
    {
        $page = Page::where('type', 'return_policy')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        return view('pages.return-policy', compact('page', 'lang'));
    }


    public function contact()
    {
        $page = Page::where('type', 'contact_us')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);
        return view('pages.contact', compact('page', 'lang'));
    }

    public function submitContactForm(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|regex:/^[0-9\-\+\s\(\)]{10,15}$/',
            // 'subject' => 'required|string|min:5|max:255',
            'message' => 'required|string|min:10',
        ]);

        $con                = new Contacts;
        $con->name          = $request->name;
        $con->email         = $request->email;
        $con->phone         = $request->phone;
        $con->subject       = $request->subject;
        $con->message       = $request->message;
        $con->save();

        // Send an email (optional)
        Mail::to(env('MAIL_ADMIN'))->queue(new ContactEnquiry($con));

        return back()->with('success', 'Your message has been sent successfully!');
    }

    public function submitAccessRequest(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|regex:/^[0-9\-\+\s\(\)]{10,15}$/',
            // 'subject' => 'required|string|min:5|max:255',
            'message' => 'required|string|min:10',
        ]);

        $con                = new RequestAccess;
        $con->name          = $request->name;
        $con->email         = $request->email;
        $con->phone         = $request->phone;
        $con->subject       = $request->subject;
        $con->message       = $request->message;
        $con->access_key    = "";
        $con->save();

        // Mail::to(env('MAIL_ADMIN'))->queue(new ContactEnquiry($con));

        return back()->with('success', 'Your request has been sent successfully!');
    }

    public function subscribe(Request $request)
    {
        $request->validate([
            'newsletter_email' => 'required|email|unique:subscribers,email',
        ], [
            'newsletter_email.required' => trans('messages.enter_email'),
            'newsletter_email.email' => trans('messages.enter_valid_email'),
            'newsletter_email.unique' => trans('messages.email_already_subscribed'),
        ]);

        Subscriber::create(['email' => $request->newsletter_email]);

        return response()->json(['success' => trans('messages.newsletter_success')]);
    }

    public function brands()
    {
        $page = Page::where('type', 'brands_list')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);

        $brands = Brand::where('is_active', 1)->orderBy('name', 'ASC')->get();

        return view('pages.brand-listing', compact('page', 'lang', 'brands'));
    }

    public function faq()
    {
        $page = Page::where('type', 'faq')->first();
        $lang = getActiveLanguage();
        $seo = [
            'title'                 => $page->getTranslation('meta_title', $lang),
            'meta_title'            => $page->getTranslation('meta_title', $lang),
            'meta_description'      => $page->getTranslation('meta_description', $lang),
            'keywords'              => $page->getTranslation('keywords', $lang),
            'og_title'              => $page->getTranslation('og_title', $lang),
            'og_description'        => $page->getTranslation('og_description', $lang),
            'twitter_title'         => $page->getTranslation('twitter_title', $lang),
            'twitter_description'   => $page->getTranslation('twitter_description', $lang),
        ];

        $this->loadSEO($seo);

        $faq_categories = FaqCategory::with(['faq_list'])->where('is_active', 1)->orderBy('sort_order', 'asc')->get();
        // echo '<pre>';
        // print_r($faq_categories);
        // die;
        return view('pages.faq', compact('page', 'lang', 'faq_categories'));
    }
}
