<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Category::factory(3)->create();
        Category::create(
            [
                'name' => 'Electronics',
                'slug' => 'Teknologi.',
                'color' => 'yellow',
            ]
        );
        Category::create(
            [
                'name' => 'Clothing',
                'slug' => 'Wear.',
                'color' => 'gray',
            ]
        );
        // Category::create(
        //     [
        //         'name' => 'Home',
        //         'slug' => 'Rumah.',
        //         'color' => 'red',
        //     ]
        // );
        // Category::create(
        //     [
        //         'name' => 'Books',
        //         'slug' => 'Buku.',
        //         'color' => 'blue',
        //     ]
        // );
        // Category::create(
        //     [
        //         'name' => 'Sports',
        //         'slug' => 'Olahraga.',
        //         'color' => 'green',
        //     ]
        // );
    }
}
