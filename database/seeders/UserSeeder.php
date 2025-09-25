<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Super Admin
        User::create([
            'name' => 'Super Admin',
            'email' => 'superadmin@example.com',
            'usertype' => 1,
            'password' => Hash::make('password123'),
        ]);

        // Customer
        User::create([
            'name' => 'Customer User',
            'email' => 'customer@example.com',
            'usertype' => 0,
            'password' => Hash::make('password123'),
        ]);

        // Delivery Boy
        User::create([
            'name' => 'Delivery Boy',
            'email' => 'delivery@example.com',
            'usertype' => 2,
            'password' => Hash::make('password123'),
        ]);

        // Sub Admin
        User::create([
            'name' => 'Sub Admin',
            'email' => 'subadmin@example.com',
            'usertype' => 3,
            'password' => Hash::make('password123'),
        ]);
    }
}
