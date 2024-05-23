<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            'Admin',
            'Customer',
            'Receptionist',
            'Super Admin'
        ];

        // Insert each role into the database
        foreach ($roles as $role) {
            DB::table('user_roles')->insert([
                'role' => $role,
            ]);

        }
    }
}
