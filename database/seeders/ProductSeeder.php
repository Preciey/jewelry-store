<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        $products = [
            [
                'name' => 'Pearl Necklace',
                'slug' => 'pearl-necklace',
                'price' => 50,
                'image' => '/Images/Pearl-necklace.jpg',
                'category' => 'necklace'
            ],
            [
                'name' => 'Bee Pendant Necklace',
                'slug' => 'bee-pendant-necklace',
                'price' => 30,
                'image' => '/Images/bee-pendant.png',
                'category' => 'necklace'
            ],
            [
                'name' => 'Stone Butterfly Necklace',
                'slug' => 'stone-butterfly-necklace',
                'price' => 40,
                'image' => '/Images/Stone-butterfly-necklace.jpg',
                'category' => 'necklace'
            ],
            [
                'name' => 'Baroque Pearl Bracelet',
                'slug' => 'baroque-pearl-bracelet',
                'price' => 35,
                'image' => '/Images/baroque-pearls.jpg',
                'category' => 'bracelet'
            ],
            [
                'name' => 'Gold Hoop Earrings',
                'slug' => 'gold-hoop-earrings',
                'price' => 25,
                'image' => '/Images/goldies-2.jpg',
                'category' => 'earring'
            ]
        ];

        foreach ($products as $product) {
            Product::create($product);
        }
    }
}
