<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SectionMangeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sections = [
            [
                "manage_type" => "home_1",
                "section" => "slider_hero",
                "title" => "Hero Section",
                "url" => null,
                "image" => null,
                "desc" => null,
                "is_publish" => 1,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "about_us",
                "title" => "About Us",
                "url" => null,
                "image" => null,
                "desc" => null,
                "is_publish" => 1,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "offer_ads",
                "title" => "Choose your offer",
                "url" => null,
                "image" => null,
                "desc" => "One More Offer For You!",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "featured_rooms",
                "title" => "Featured Rooms",
                "url" => null,
                "image" => null,
                "desc" => "With Mira, a smile of satisfaction will accompany you; Because it is a specialized Saudi company that translates all its expertise into hotel construction And operate it to your satisfaction, through commitment to the finest International specifications and standards",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "our_services",
                "title" => "Our Hotel Services",
                "url" => null,
                "image" => null,
                "desc" => " The Mira hotel series offers you a range of services that make your stay an unforgettable experience, with a 24-hour reception desk, quick and easy check-in and check-out. You can also purchase your daily needs from the small market inside the hotel. In addition to diverse services that meet all your needs, such as grocery delivery, luggage storage service, and dedicated parking for your\u{A0}convenience.",
                "is_publish" => 1,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "testimonial",
                "title" => "What Our Clients Says",
                "url" => null,
                "image" => null,
                "desc" => "With Mira, a smile of satisfaction will accompany you; Lanha is a specialized Saudi company that translates all its experience in establishing and operating hotels to achieve your satisfaction, by adhering to the highest international specifications and standards.",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "our_blogs",
                "title" => "News",
                "url" => null,
                "image" => null,
                "desc" => "In Riyadh, the city of nobility, heritage and modernity in the center of the city, near its most important tourist attractions, Mira Hotels Company chose to make its launch into the world of four-star hotels from a strategic location, from Prince Muhammad bin Abdulaziz Street, famous as (Tahlia Street). It is a landmark street in the city of Riyadh, and has become one of the symbols of vitality that has become famous as one of the most important luxury in it, and the preferred location for the most luxurious international companies and brands, so the hotel enjoys its vital location in the heart of the capital,It is surrounded by many of the finest tourist attractions, making the hotel guest a part of the various centers, shops, international brands and restaurants for travelers interested in shopping for the liveliness that characterizes this upscale street, and a choice of activities suitable for family and business. The hotel is located in the middle of the most famous tourist attractions in the city of Riyadh, as it is located 1.5 km from Al Faisaliah Tower, 2.3 km from the Kingdom Mall (Kingdom Tower), 2.7 km from Panorama Mall, and 29 km from King Khalid Airport. ",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "our_services",
                "title" => "خدمات الفندق",
                "url" => null,
                "image" => null,
                "desc" => 'تُقدم لك سلسلة فنادق ميرا مجموعة من الخدمات التي تجعل إقامتك تجربة لا تُنسى، مع مكتب استقبال يعمل على مدار 24 ساعة، وتسجيل سريع وسهل عند الوصول والمغادرة. كما يمكنك شراء احتياجاتك اليومية من السوق الصغيرة داخل الفندق. بالإضافة إلى خدمات مُتنوعة تلبي جميع احتياجاتك، مثل خدمة توصيل البقالة، وخدمة تخزين الأمتعة، ومواقف سيارات مُخصصة لراحتك.',
                "is_publish" => 1,
                "lan" => "ar",
            ],
            [
                "manage_type" => "home_1",
                "section" => "offer_ads",
                "title" => "العروض",
                "url" => null,
                "image" => null,
                "desc" => "عرض آخر لك!",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "our_blogs",
                "title" => "الاخبار",
                "url" => null,
                "image" => null,
                "desc" => "في الرياض، مدينة العراقة والُتراث وال حَدَاثة في وسط المدينة، عند أهم معالمها الس ياحية ، اختارت شركة فنادق ميرا أن تكون انطالقتها في عالم الفنادق من فئة األربع نجوم من موقع استراتيجي، من شارع األمير محمد بن عبدالعزيز، الشهير بـ(شارع التحلية)، وهو الشارع مَعلما معالم مدينة الرياض، وأصبح احد رموز الحيوي الذي ذاع صيته بوصفه من أهم الرفاهية فيها، والمكان ال مفضل ألفخم الشركات والع المات التجارية العالمية، ليتمتع الفندق بموقعه الحيوي في قلب العاصمة، حيث يُحيط به العديد من المعالم السياحية وأرقى ، ما يجعل نزيل الفندق جزءا المراكز والمحال التجارية والماركات العالمية والمطا عم ال متنوعة  رائعا للمسافرين المه تمين بالتسوق  من الحيوية التي تميز هذا الشارع الراقي، وخيار ا واألن شطة المناسبة للعائلة واألعمال. ويقع الفندق في وسط أشهر المعالم السياحية في مدينة الرياض، إذ يقع على بعد 1.5 كم من برج الفيصلية، و2.3 كم من مركز المملكة التجاري( برج المملكة ) ، و 2.7 كم من بانوراما مول، ويبعد 29 كم عن مطار الملك خالد.",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "testimonial",
                "title" => "تعرف علي مؤسسي الفندق",
                "url" => null,
                "image" => null,
                "desc" => "مع ميرا سترافقك ابتسامة الرضا ؛ للنها شركة سعودية مختصة تترجم ُكل خبراتها في إنشاء الفنادق وتشغيلها لتحقيق رضاك، من خلال الاللتزام بأرقى المواصفات والمقاييس العالمية . ",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "about_us",
                "title" => "من نحن",
                "url" => null,
                "image" => null,
                "desc" => "من نحن",
                "is_publish" => 1,
                "lan" => "ar",
            ],
            [
                "manage_type" => "home_1",
                "section" => "featured_rooms",
                "title" => "الغرف المميزة",
                "url" => null,
                "image" => null,
                "desc" => "مع ميرا سترافقك ابتسامة الرضا ؛ ألانها شركة سعودية مختصة تترجم ُكل خبراتها في إنشاء الفنادق وتشغيلها لتحقيق رضاك، من خالل االلتزام بأرقى المواصفات والمقاييس العالمية .",
                "is_publish" => 2,
                "lan" => "en",
            ],
            [
                "manage_type" => "home_1",
                "section" => "slider_hero",
                "title" => "معاينة",
                "url" => null,
                "image" => "07012023043902-preview.jpg",
                "desc" => "فيديو معاينة لفندقنا",
                "is_publish" => 1,
                "lan" => "en",
            ]

        ];

        ///
        foreach ($sections as $section) {
            DB::table('section_manages')->insert($section);
        }
    }
}
