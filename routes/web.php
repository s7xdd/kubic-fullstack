<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\Frontend\AuthController;

Route::get('/', [FrontendController::class, 'home'])->name('home');
Route::get('/about', [FrontendController::class, 'about'])->name('about-us');

Route::get('/services', [FrontendController::class, 'services'])->name('services.index');
Route::get('/services/{slug}', [FrontendController::class, 'showService'])->name('services.show');

Route::post('/subscribe', [FrontendController::class, 'subscribe'])->name('newsletter.subscribe');

Route::get('/contact', [FrontendController::class, 'contact'])->name('contact');
Route::post('/contact-submit', [FrontendController::class, 'submitContactForm'])->name('contact.submit');

Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::post('/request-access', [FrontendController::class, 'submitAccessRequest'])->name('access.submit');

Route::get('/check-login-status', [UserController::class, 'checkLoginStatus'])->name('check.login.status');

Route::group(['middleware' => ['auth']], function () {

    Route::get('/projects', [FrontendController::class, 'projects'])->name('projects.index');
    Route::get('/projects/{slug}', [FrontendController::class, 'showProject'])->name('projects.show');

    Route::get('logout', [AuthController::class, 'logout'])->name('logout');
});

