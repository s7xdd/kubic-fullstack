<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\StaffController;
use App\Http\Controllers\Admin\AizUploadController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\WebsiteController;
use App\Http\Controllers\Admin\Bannercontroller;
use App\Http\Controllers\Admin\PageController;
use App\Http\Controllers\Admin\BusinessSettingsController;
use App\Http\Controllers\Admin\HomeSliderController;
use App\Http\Controllers\Admin\PartnersController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\NotificationController;
use App\Http\Controllers\Admin\ProjectController;

Route::get('/admin/notifications', function () {
    $admin = auth()->user();
    return $admin->unreadNotifications;
})->middleware('auth');

Route::post('/admin/notifications/mark-as-read', function () {
    $admin = auth()->user();
    $admin->unreadNotifications->markAsRead();
    return response()->json(['success' => true]);
})->middleware('auth');

Route::group(['middleware' => ['guest']], function () {
    Route::get('login', [AuthController::class, 'showLoginForm'])->name('admin.login');
    Route::post('login', [AuthController::class, 'login']);
});

Route::get('logout', [AuthController::class, 'logout'])->name('admin.logout');

Route::group(['middleware' => ['auth']], function () {

    Route::get('/', [AdminController::class, 'admin_dashboard'])->name('admin.dashboard');
    Route::get('/cache-cache', [AdminController::class, 'clearCache'])->name('cache.clear');

    Route::resource('roles', RoleController::class);
    Route::get('/roles/edit/{id}', [RoleController::class, 'edit'])->name('roles.edit');
    Route::get('/roles/destroy/{id}', [RoleController::class, 'destroy'])->name('roles.destroy');

    Route::resource('staffs', StaffController::class);
    Route::get('/staffs/destroy/{id}', [StaffController::class, 'destroy'])->name('staffs.destroy');

    Route::post('/banners/get_form', [Bannercontroller::class, 'get_form'])->name('banners.get_form');
    Route::get('/banners/destroy/{banner}', [Bannercontroller::class, 'destroy'])->name('banners.destroy');
    Route::resource('banners', Bannercontroller::class)->except(['show', 'destroy']);
    Route::get('/banners/edit/{id}', [Bannercontroller::class, 'edit'])->name('banners.edit');

    Route::get('/enquiries-contact', [PageController::class, 'enquiries'])->name('enquiries.contact');
    Route::post('/admin/enquiry/accept/{id}', [PageController::class, 'acceptEnquiry'])->name('enquiry.accept');

    Route::get('/access-requests', [PageController::class, 'accessRequests'])->name('access-requests.contact');
    Route::post('/admin/access/accept/{id}', [PageController::class, 'acceptRequest'])->name('access-requests.accept');

    Route::group(['prefix' => 'website'], function () {
        Route::get('/footer', [WebsiteController::class, 'footer'])->name('website.footer');

        Route::get('/appearance', [WebsiteController::class, 'appearance'])->name('website.appearance');

        Route::post('/home-slider/update-status', [HomeSliderController::class, 'updateStatus'])->name('home-slider.update-status');
        Route::get('/home-slider/delete/{id}', [HomeSliderController::class, 'destroy'])->name('home-slider.delete');
        Route::resource('home-slider', HomeSliderController::class);

        Route::resource('custom-pages', PageController::class);
        Route::get('/pages', [PageController::class, 'index'])->name('website.pages');
        Route::get('/custom-pages/edit/{id}', [PageController::class, 'edit'])->name('custom-pages.edit');
        Route::get('/custom-pages/destroy/{id}', [PageController::class, 'destroy'])->name('custom-pages.destroy');
        Route::post('/page/delete_image', [PageController::class, 'delete_image'])->name('page.delete_image');

        Route::get('/subscribers', [PageController::class, 'subscribers'])->name('subscribers.index');
        Route::get('/subscribers/destroy/{id}', [PageController::class, 'subscribersDestroy'])->name('subscriber.destroy');

        Route::resource('partners', PartnersController::class)->except('show');
    });

    // uploaded files
    Route::any('/uploaded-files/file-info', [AizUploadController::class, 'file_info'])->name('uploaded-files.info');
    Route::resource('/uploaded-files', AizUploadController::class);
    Route::get('/uploaded-files/destroy/{id}', [AizUploadController::class, 'destroy'])->name('uploaded-files.destroy');
    Route::post('/aiz-uploader', [AizUploadController::class, 'show_uploader']);
    Route::post('/aiz-uploader/upload', [AizUploadController::class, 'upload']);
    Route::get('/aiz-uploader/get_uploaded_files', [AizUploadController::class, 'get_uploaded_files']);
    Route::post('/aiz-uploader/get_file_by_ids', [AizUploadController::class, 'get_preview_files']);
    Route::get('/aiz-uploader/download/{id}', [AizUploadController::class, 'attachment_download'])->name('download_attachment');

    //Notifications
    Route::get('/all-notification', [NotificationController::class, 'index'])->name('admin.all-notification');

    // Categories
    Route::get('/generate-slug', [CategoryController::class, 'generateSlug'])->name('generate-slug');

    Route::post('/business-settings/update', [BusinessSettingsController::class, 'update'])->name('business_settings.update');

    // Manage services
    Route::get('/service/all', [ServiceController::class, 'index'])->name('service.index');
    Route::get('/service/create', [ServiceController::class, 'create'])->name('service.create');
    Route::post('/service/store/', [ServiceController::class, 'store'])->name('service.store');
    Route::get('/service/edit/{id}', [ServiceController::class, 'edit'])->name('service.edit');
    Route::post('/service/update/{id}', [ServiceController::class, 'update'])->name('service.update');
    Route::post('/service/status', [ServiceController::class, 'updateStatus'])->name('service.status');
    Route::get('/service/delete/{id}', [ServiceController::class, 'destroy'])->name('service.delete');

    Route::get('/project/all', [ProjectController::class, 'index'])->name('project.index');
    Route::get('/project/create', [ProjectController::class, 'create'])->name('project.create');
    Route::post('/project/store/', [ProjectController::class, 'store'])->name('project.store');
    Route::get('/project/edit/{id}', [ProjectController::class, 'edit'])->name('project.edit');
    Route::post('/project/update/{id}', [ProjectController::class, 'update'])->name('project.update');
    Route::post('/project/status', [ProjectController::class, 'updateStatus'])->name('project.status');
    Route::get('/project/delete/{id}', [ProjectController::class, 'destroy'])->name('project.delete');
    Route::post('/project/delete_gallery', [ProjectController::class, 'delete_gallery'])->name('project.delete_gallery');

});
