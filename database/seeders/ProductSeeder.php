<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;


class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 20; $i++) {
            DB::table('products')->insert([    
                'name' => $faker->word(),  
                'description' => $faker->sentence(),  
                'image' => $faker->imageUrl($width = 640, $height = 480),  
                'price' => $faker->randomFloat(2, 10, 100),
             ]);  
        }

    }
}
