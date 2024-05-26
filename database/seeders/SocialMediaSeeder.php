<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SocialMediaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sociales = [
            [
                'title' => 'Facebook',
                'url' => 'https://www.facebook.com/',
                'social_icon' => 'bi bi-facebook',
                'target' => '_blank',
                'is_publish' => 1,

            ], [
                'title' => 'Twitter',
                'url' => 'https://twitter.com/',
                'social_icon' => 'bi bi-twitter',
                'target' => '_blank',
                'is_publish' => 1,

            ], [
                'title' => 'Instagram',
                'url' => 'https://www.instagram.com/',
                'social_icon' => 'bi bi-instagram',
                'target' => '_blank',
                'is_publish' => 1,

            ], [
                'title' => 'Youtube',
                'url' => 'https://www.youtube.com/',
                'social_icon' => 'bi bi-youtube',
                'target' => '_blank',
                'is_publish' => 1,

            ],
        ];

        foreach ($sociales as $social) {
            DB::table('social_medias')->insert($social);
        }
    }
}
