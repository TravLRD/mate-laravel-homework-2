<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('blog_posts', App\Http\Controllers\BlogPostController::class);
Route::resource('users', App\Http\Controllers\UserController::class);


Route::get('/confections', [App\Http\Controllers\ConfectionController::class, 'index'])->name('confections.index');
Route::get('/confections/filter', [App\Http\Controllers\ConfectionController::class, 'filter'])->name('confections.filter');
