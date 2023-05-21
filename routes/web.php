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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

Route::get('/test', function () {
    $user = auth()->user();

    if ($user && $user->hasRole('admin')) {
        return 'You have the admin role.';
    } elseif ($user && $user->can('edit own content')) {
        return 'You have permission to edit your own content.';
    } elseif ($user && $user->can('view content')) {
        return 'You have permission to view content.';
    } else {
        return 'You have no special roles or permissions.';
    }
});


Route::resource('blog_posts', App\Http\Controllers\BlogPostController::class);
