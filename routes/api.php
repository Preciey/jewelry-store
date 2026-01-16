<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ContactController;

Route::post('/contact', [ContactController::class, 'send']);
Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/{id}', [ProductController::class, 'show']);
Route::get('/products/category/{category}', [ProductController::class, 'category']);
Route::get('/products/featured', [ProductController::class, 'featured']);
Route::get('/categories', [CategoryController::class, 'index']);
