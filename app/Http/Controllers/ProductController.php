<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        return response()->json(Product::all());
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);
        return response()->json($product);
    }

    public function category($category)
    {
        $products = Product::where('category', $category)->get();
        return response()->json($products);
    }
    public function featured() {
    return response()->json(\App\Models\Product::take(8)->get());
}

}

