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
                'language_name' => 'English',
                'flag' => 'https://en.wikipedia.org/wiki/File:Flag_of_the_United_Kingdom_%281-2%29.svg',
            ],
            [
                'language_code' => 'ar',
                'language_name' => 'العربية ',
                'flag' => 'https://en.wikipedia.org/wiki/File:Flag_of_arabic.svg',
            ],
        ];

        foreach ($languages as $language) {
            DB::table('languages')->insert($language);
        }
    }
}
