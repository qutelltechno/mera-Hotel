<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $languages = [
            [
                'language_code' => 'en',
                'language_name' => 'en',
                'is_rtl'=>0,
                'language_defult'=>0,
                'flag' => 'https://en.wikipedia.org/wiki/File:Flag_of_the_United_Kingdom_%281-2%29.svg',
            ],
            [
                'language_code' => 'ar',
                'language_name' => 'ar ',
                'is_rtl'=>1,
                'language_defult'=>1,
                'flag' => 'https://en.wikipedia.org/wiki/File:Flag_of_arabic.svg',
            ],
        ];

        foreach ($languages as $language) {
            DB::table('languages')->insert($language);
        }
    }
}
