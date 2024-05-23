<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name' => ' supera dmin',
                'email' => 'superadmin@superadmin.com',
                'password' => Hash::make('superadmin123456'),
                'shop_name' => 'superadmin\'s Shop',
                'shop_url' => 'https://johns-shop.com',
                'phone' => '(123) 456-7890',
                'address' => '123 Main Street',
                'city' => 'Anytown',
                'state' => 'CA',
                'zip_code' => '12345',
                'country_id' => 1,
                'photo' => 'profile.jpg',
                'status_id' => 1,
                'role_id' => 4,
            ],
            [
                'name' => 'customer',
                'email' => 'customer@customer.com',
                'password' => Hash::make('customer123456'),
                'shop_name' => 'Customer\'s Shop',
                'shop_url' => 'https://johns-shop.com',
                'phone' => '(123) 456-7890',
                'address' => '123 Main Street',
                'city' => 'Anytown',
                'state' => 'CA',
                'zip_code' => '12345',
                'country_id' => 1,
                'photo' => 'profile.jpg',
                'status_id' => 1,
                'role_id' => 2,
            ],
            [
                'name' => 'Receptionist',
                'email' => 'receptionist@receptionist.com',
                'password' => Hash::make('receptionist123456'),
                'shop_name' => 'receptionist\'s Shop',
                'shop_url' => 'https://johns-shop.com',
                'phone' => '(123) 456-7890',
                'address' => '123 Main Street',
                'city' => 'Anytown',
                'state' => 'CA',
                'zip_code' => '12345',
                'country_id' => 1,
                'photo' => 'profile.jpg',
                'status_id' => 1,
                'role_id' =>3,
            ],
            [
                'name' => ' Admin',
                'email' => 'admin@admin.com',
                'password' => Hash::make('admin123456'),
                'shop_name' => 'admin\'s Shop',
                'shop_url' => 'https://johns-shop.com',
                'phone' => '(123) 456-7890',
                'address' => '123 Main Street',
                'city' => 'Anytown',
                'state' => 'CA',
                'zip_code' => '12345',
                'country_id' => 1,
                'photo' => 'profile.jpg',
                'status_id' => 1,
                'role_id' =>1,
            ],



        ];

        foreach ($users as $user) {
            DB::table('users')->insert($user);
        }
    }

}
