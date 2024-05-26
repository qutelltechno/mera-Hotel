<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $status = [
            'Active',
            'Inactive',
        ];

        // Insert each status into the database
        foreach ($status as $row) {
            DB::table('user_status')->insert([
                'status' => $row,
            ]);

        }
    }
}
