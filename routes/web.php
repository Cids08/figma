<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EnrollmentController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ContactController;

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::get('/news', function () {
    return view('news');
})->name('news');

Route::get('/gallery', function () {
    return view('gallery');
})->name('gallery');

Route::get('/staff', function () {
    return view('staff');
})->name('staff');

Route::get('/history', function () {
    return view('history');
})->name('history');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/announcement', function () {
    return view('announcement');
})->name('announcement');

// Enrollment routes
Route::get('/enrollment', [EnrollmentController::class, 'create'])->name('enrollment.create');
Route::post('/enrollment', [EnrollmentController::class, 'store'])->name('enrollment.submit'); 
Route::get('/enrollment/success', [EnrollmentController::class, 'success'])->name('enrollment.success');

// Show contact form
Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');

// Handle form submission (POST request)
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');

// Use the fully qualified namespace for the controller
Route::get('/contact', 'App\Http\Controllers\ContactController@index')->name('contact');


