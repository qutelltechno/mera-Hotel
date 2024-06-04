<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            UserRoleSeeder::class,
            UserStatusSeeder::class,
            UserSeeder::class ,
            TpStatusSeeder::class,
            LanguageSeeder::class,
            TaxSeeder::class,
            SocialMediaSeeder::class,
            SectionMangeSeeder::class,
            // SectionContetnSeeder::class,


        ]);
    }
}
