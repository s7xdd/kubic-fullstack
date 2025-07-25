<?php

namespace App\Providers;

use App\Models\Service;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\View;
use Illuminate\Pagination\Paginator;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if (Session::has('locale')) {
            App::setLocale(Session::get('locale'));
        }
        Schema::defaultStringLength(191);

        Blade::component('components.home.blog-list', 'blogList');
        Blade::component('components.home.testimonials', 'testimonials');
        Blade::component('components.footer', 'footer');

        View::composer('layouts.header.main', function ($view) {
            $services = Service::where('status', 1)
                ->whereNull('parent_id')
                ->orderBy('sort_order', 'ASC')
                ->get();
            $view->with(['services' => $services]);
        });

        Paginator::useBootstrap();
    }
}
