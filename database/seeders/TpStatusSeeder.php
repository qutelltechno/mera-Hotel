<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TpStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $status = [
            'Publish',
            'Draft',
        ];

        // Insert each Tp Status into the database
        foreach ($status as $row) {
            DB::table('tp_status')->insert([
                'status' => $row,
            ]);

        }
    }
}
