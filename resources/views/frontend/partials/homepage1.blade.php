<main class="main {{ $PageVariation['home_variation'] }}">
	<!-- Hero Section -->
	@if($slider_hero_section->is_publish == 1)
	<section class="hero-section">
		@foreach ($slider as $row)
		@php $aRow = json_decode($row->desc); @endphp
		<div class="hero-screen hero-overlay" style="background-image: url({{ $row->image ? asset('public/media/'.$row->image) : '' }});">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
						<div class="hero-content">
							<h1>{{ $row->title }}</h1>
							@if($aRow->sub_title != '')
							<p>{{ $aRow->sub_title }}</p>
							@endif
							@if($aRow->button_text != '')
							<!-- <a href="{{ $row->url }}" class="btn theme-btn wow bounce" {{ $aRow->target =='' ? '' : "target=".$aRow->target }}>{{ $aRow->button_text }}</a> -->
							@endif
						</div>
					</div>
				</div>
			</div>
		</div>
		@endforeach

		<div class="search-card">
			<div class="container">
				<div class="search-card-inner wow fadeIn">
					<form method="GET" action="{{ route('frontend.search') }}">
						<div class="row g-2">
							<div class="col-sm-6 col-md-4 col-lg-2 col-xl-2 mb-3">
								<label for="checkin_date" class="form-label">{{ __('Check In') }}</label>
								<input name="checkin_date" id="checkin_date" type="text" class="form-control" placeholder="yyyy-mm-dd">
							</div>
							<div class="col-sm-6 col-md-4 col-lg-2 col-xl-2 mb-3">
								<label for="checkout_date" class="form-label">{{ __('Check Out') }}</label>
								<input name="checkout_date" id="checkout_date" type="text" class="form-control" placeholder="yyyy-mm-dd">
							</div>
							<div class="col-sm-6 col-md-4 col-lg-2 col-xl-2 mb-3">
								<label for="total_adult" class="form-label">{{ __('Adult') }}</label>
								<input name="total_adult" id="total_adult" type="number" class="form-control" value="1" min="1">
							</div>
							<div class="col-sm-6 col-md-4 col-lg-2 col-xl-2 mb-3">
								<label for="total_child" class="form-label">{{ __('Child') }}</label>
								<input name="total_child" id="total_child" type="number" class="form-control" value="0" min="0">
							</div>
							<div class="col-sm-6 col-md-4 col-lg-4 col-xl-4">
								<button type="submit" class="btn theme-btn search-btn">{{ __('Check Availability') }}</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	@endif
	<!-- /Hero Section/ -->

	<!-- About Section/ -->
	@if($about_us_section->is_publish == 1)
	@foreach ($about_us as $row)
	@php $aRow = json_decode($row->desc); @endphp
	<section class="section about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-5 wow fadeInRight ">
					@if($row->image != '')
					<div class="row">
						<div class="col-lg-12 ">
							<div class="about-img">
								<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}">
							</div>
						</div>
					</div>
					@endif

					<div class="row">
						@if($aRow->image2 != '')
						<div class="col-12 col-md-6">
							<div class="about-img">
								<img src="{{ asset('public/media/'.$aRow->image2) }}" alt="{{ $row->title }}">
							</div>
						</div>
						@endif
						@if($aRow->image3 != '')
						<div class="col-12 col-md-6">
							<div class="about-img">
								<img src="{{ asset('public/media/'.$aRow->image3) }}" alt="{{ $row->title }}">
							</div>
						</div>
						@endif
					</div>
				</div>

				<div class="col-md-12 col-lg-7 wow fadeInLeft">
					<div class="about-card">
						<div class="about-title">
							<h5>{{ __('About Us') }}</h5>
							<h2>{{ $row->title }}</h2>
						</div>
						@if($aRow->description != '')
						<p class="mb20" style="text-align: justify">{{ $aRow->description }}</p>
						@endif
                            <hr>
                            @if (glan()=='ar')
                            <div class="about-title">
                                <h5>رؤيتنا تقود عملنا</h5>
                                <p>
                                    لشركة ميرا للفنادق رؤية واضحة تصب في خدمتك، وهي أن تكون الشركة إحدى كُبريات الشركات العاملة في القطاع الفندقي، معتمدةً على خبرتها الفندقية العالية، ودراساتها المستقبلية الدقيقة، واستقطابها لأهم الكوادر
                                    الإدارية والتنفيذية الخبيرة.
                                </p>
                            </div>

                            <div class="about-title">
                                <h5>القـيــــــم</h5>
                                <p>بدأت سلسلة فنادق ميرا بالاتساع لتغطي مدينتي الرياض وجدة بأربعة فنادق فاخرة تقدم لنزلائها الكرام عددا كبيراً من الغرف والأجنحة الراقية المتنوعة التي تُناسب متطلبات مختلف شرائح النُزلاء، وقد نبحث في إعطاء افضل الانطباعات الإيجابية لديهم عن خدماتها المميزة.</p>
                            </div>

                            <div class="about-title">
                                <h5>باقة متكاملة من الخدمات</h5>
                                <p>الاهتمام بالتفاصيل هو إحدى علاماتنا الفارقة، فبالإضافة إلى الإقامة المريحة
                                    المُترفة، تقدم فنادق ميرا باقة متكاملة من الخدمات الفندقية الإضافية، كغرف الاجتماعات، ومواقف السيارات، والنوادي الصحية والرياضية بما في
                                    ذلك المسابح وقاعات المساج والسبا.
                                </p>
                            </div>
                            @else
                            <div class="about-title">
                                <h5>Our Vision Leads Our Work</h5>
                                <p>Mira Hotels have a clear vision to serve you. Aiming to be one of the largest companies operating in hotel sector, relying on its high hotel experience, accurate future studies and attracting most important administrative and executive cadres.</p>
                            </div>

                            <div class="about-title">
                                <h5>Our Values</h5>
                                <p>The Mira Hotel chain has grown to cover cities of Riyadh and Jeddah with four luxury hotels offering guests large number of rooms and suites that match all needs of various guest segments, Mira Hotel chain succeeded to give guests the best impressions of services.</p>
                            </div>

                            <div class="about-title">
                                <h5>Perfect Package Of Services</h5>
                                <p>Concerning about detail is one of our distinguishing marks. In addition to the comfortable and luxurious accommodation, Mira offers perfect package of additional hotel services such as meeting rooms, parking, health and sports clubs including swimming pools, massage rooms and spa</p>
                            </div>
                            @endif


						@if($aRow->button_text != '')
						<a href="{{ $row->url }}" class="btn theme-btn" {{ $aRow->target =='' ? '' : "target=".$aRow->target }}>{{ $aRow->button_text }}</a>
						@endif
					</div>
				</div>

                <div class="about-card" style="margin-top: 100px">
                    <div class="row mb40">
                        @if($aRow->total_rooms != '')
                        <div class="col-12 col-sm-3 col-lg-3">
                            <div class="info-card mb15">
                                <div class="icon">
                                    <i class="bi bi-buildings"></i>
                                </div>
                                <div class="content">
                                    <h4>{{ $aRow->total_rooms }}</h4>
                                    <p>{{ __('Rooms') }}</p>
                                </div>
                            </div>
                        </div>
                        @endif

                        @if($aRow->total_customers != '')
                        <div class="col-12 col-sm-3 col-lg-3">
                            <div class="info-card mb15">
                                <div class="icon">
                                    <i class="bi bi-emoji-smile"></i>
                                </div>
                                <div class="content">
                                    <h4>{{ $aRow->total_customers }}</h4>
                                    <p>{{ __('Customers') }}</p>
                                </div>
                            </div>
                        </div>
                        @endif

                        @if($aRow->total_amenities != '')
                        <div class="col-12 col-sm-3 col-lg-3">
                            <div class="info-card mb15">
                                <div class="icon">
                                    <i class="bi bi-pie-chart"></i>
                                </div>
                                <div class="content">
                                    <h4>{{ $aRow->total_amenities }}</h4>
                                    <p>{{ __('Amenities') }}</p>
                                </div>
                            </div>
                        </div>
                        @endif

                        @if($aRow->total_packages != '')
                        <div class="col-12 col-sm-3 col-lg-3">
                            <div class="info-card mb15">
                                <div class="icon">
                                    <i class="bi bi-percent"></i>
                                </div>
                                <div class="content">
                                    <h4>{{ $aRow->total_packages }}</h4>
                                    <p>{{ __('Packages') }}</p>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
			</div>
		</div>
	</section>
	@endforeach
	@endif
	<!-- /About Section/ -->

	<!-- Hotels -->
    <section class="section service-section">
        @if(glan()=='ar')
        <div class="container mt-5">
			<div class="section-heading text-center">
							<!-- <h5>سلسلة فنادق ميرا</h5> -->

							<h2> سلسلة فنادق ميرا</h2>

			</div>
            @php
                $hotels = [
                    'فندق ميرا أعمال',
                    'فندق ميرا تريو',
                    'فندق ميرا الواجهة البحرية',
                    'ميرا للاجنحة الفندقية'
                ]
            @endphp
            <div class="row">
                @foreach ($hotels as $hotel)
				<div class="col-lg-3 col-md-6 col-sm-12 position-relative main-card">
                    <div>
                        <img src="{{ asset("public/frontend/images/hotels/$loop->index.jpg") }}" alt="">
                    </div>
                    <div class="col-9 text-card shadow" style="height: 280px">
                        <h3>{{ $hotel }}</h3>
                        <p class="paragraphe-text">
						هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي،

					</p>
					<div class="social-media mt25 mt-2">
						@php echo SocialMediaList(); @endphp
					</div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        @else
        <div class="container mt-5">
			<div class="section-heading text-center">
                <h2>Mira Hotels Group</h2>
			</div>
            @php
                $hotels = [
                    'Mira Business Hotel',
                    'Mira Trio Hotel',
                    'Mira Waterfront Hotel',
                    'Mira Hotel Suites'
                ]
            @endphp
            <div class="row">
                @foreach ($hotels as $hotel)
				<div class="col-lg-3 col-md-6 col-sm-12 position-relative main-card">
                    <div>
                        <img src="{{ asset("public/frontend/images/hotels/$loop->index.jpg") }}" alt="">
                    </div>
                    <div class="col-9 text-card shadow" style="height: 280px">
                        <h3>{{ $hotel }}</h3>
                        <p class="paragraphe-text">
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.
					</p>
					<div class="social-media mt25 mt-2">
						@php echo SocialMediaList(); @endphp
					</div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        @endif
             </section>
            </div>
        </div>

            </div>
        </div>
	</section>
	<!-- /Hotels -->

	<!-- Offer Section -->
	@if($offer_ads_section->is_publish == 1)
	<section class="section offer-section ">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ">
					<div class="section-heading text-center">
						<h5>{{ $offer_ads_section->title }}</h5>
						@if($offer_ads_section->desc != '')
						<h2>{{ $offer_ads_section->desc }}</h2>
						@endif
					</div>
				</div>
			</div>
			<div class="row ">
				@foreach ($OfferAds as $row)
				@php $aRow = json_decode($row->desc); @endphp
				<div class="col-lg-4 wow fadeInLeft">
					<div class="offer-card ">
						<div class="offer-image">
							<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" />
						</div>
						<div class="offer-content">
							<h2>{{ $row->title }}</h2>
							@if($aRow->text_2 != '')
							<p>{{ $aRow->text_2 }}</p>
							@endif
							@if($aRow->button_text != '')
							<a href="{{ $row->url }}" class="btn theme-btn offer-btn" {{ $aRow->target =='' ? '' : "target=".$aRow->target }}>{{ $aRow->button_text }}</a>
							@endif
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
	@endif
	<!-- /Offer Section/ -->

	<!-- Featured Section/ -->
	@if($featured_rooms_section->is_publish == 1)
	<section class="section featured-section wow fadeInUp">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Choose Your Rooms') }}</h5>
						<h2>{{ $featured_rooms_section->title }}</h2>
						@if($featured_rooms_section->desc != '')
						<p>{{ $featured_rooms_section->desc }}</p>
						@endif
					</div>
				</div>
			</div>

			<div class="row ">
				@foreach ($featured_rooms as $row)
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="item-card">
						<div class="item-image">
							<a href="{{ route('frontend.room', [$row->id, $row->slug]) }}">
								<img src="{{ asset('public/media/'.$row->thumbnail) }}" alt="{{ $row->title }}" />
							</a>
							@if(($row->is_discount == 1) && ($row->old_price !=''))
								@php
									$discount = number_format((($row->old_price - $row->price)*100)/$row->old_price);
								@endphp
							<span class="item-label">{{ $discount }}% {{ __('Off') }}</span>
							@endif
						</div>
						<div class="item-content">
							<div class="item-title">
								<a href="{{ route('frontend.room', [$row->id, $row->slug]) }}">{{ str_limit($row->title) }}</a>
							</div>
							<div class="pric-card">
								@if($row->price != '')
									@if($gtext['currency_position'] == 'left')
									<div class="new-price">{{ $gtext['currency_icon'] }}{{ NumberFormat($row->price) }}</div>
									@else
									<div class="new-price">{{ NumberFormat($row->price) }}{{ $gtext['currency_icon'] }}</div>
									@endif
								@endif
								@if(($row->is_discount == 1) && ($row->old_price !=''))
									@if($gtext['currency_position'] == 'left')
									<div class="old-price">{{ $gtext['currency_icon'] }}{{ NumberFormat($row->old_price) }}</div>
									@else
									<div class="old-price">{{ NumberFormat($row->old_price) }}{{ $gtext['currency_icon'] }}</div>
									@endif
								@endif
								<div class="per-day-night">/ {{ __('Night') }}</div>
							</div>
						</div>
						<a href="{{ route('frontend.room', [$row->id, $row->slug]) }}" class="btn theme-btn book-now-btn">{{ __('Details') }}</a>
						<ul class="item-meta">
							<li>{{ __('Adult') }} {{ $row->total_adult }}</li>
							<li>{{ __('Child') }} {{ $row->total_child }}</li>
						</ul>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
	@endif
	<!-- /Featured Section/ -->

    <!-- Preview Video Section-->
	@if($home_video['is_publish'] == 1)
	<section class="preview-section">
		<div class="row align-items-center justify-content-center g-0">
			<div class="col-12 col-md-12 col-lg-12 col-xl-6">
				<div class="preview-video">
					<img src="{{ asset('public/media/'.$home_video['image']) }}" alt="{{ $home_video['title'] }}">
					<div class="video-card">
						<a href="{{ $home_video['video_url'] }}" class="play-icon popup-video">
							<i class="bi bi-play-fill"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-12 col-lg-12 col-xl-6">
				<div class="preview-content">
					<h5>{{ __('Preview') }}</h5>
					<h2>{{ $home_video['title'] }}</h2>
					@if($home_video['short_desc'] !='')
					<p>{{ $home_video['short_desc'] }}</p>
					@endif
					<a href="{{ $home_video['url'] }}" {{ $home_video['target'] =='' ? '' : "target=".$home_video['target'] }} class="btn theme-btn">{{ $home_video['button_text'] }}</a>
				</div>
			</div>
		</div>
	</section>
	@endif
	<!-- /Preview Video Section/ -->

	<!-- Services Section/ -->
	@if($our_services_section->is_publish == 1)
	<section class="section service-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Our Services') }}</h5>
						<h2>{{ $our_services_section->title }}</h2>
						@if($our_services_section->desc != '')
						<p>{{ $our_services_section->desc }}</p>
						@endif
					</div>
				</div>
			</div>
			<div class="row wow fadeIn">
				@foreach ($our_services as $row)
				<div class="col-12 col-md-6 col-lg-2">
					<div class="service-card">
						<div class="service-icon">
							<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" />
						</div>
						<h4>{{ $row->title }}</h4>
						<!-- <p>{{ $row->desc }}</p> -->
					</div>
				</div>
				@endforeach
			</div>

            <div class="item-content mt25">
                <div class="item-title d-flex justify-content-center">
                    <a class="btn theme-btn" href="{{ route('frontend.services') }}">{{__('Show More')}}</a>
                 </div>
            </div>
		</div>
	</section>


    <section class="section service-section">
        <div class="container mt-5">
            <div class="row">
                @foreach ($our_services2 as $row)
                <div class="col-lg-4 col-md-6 col-sm-12 position-relative main-card">
                    <div>
                        <img style="height:250px" src="{{ asset('public/media/'.$row->image) }}" alt="">
                    </div>
                    <div class="col-9 text-card">
                        <h3>{{ $row->title }}</h3>
                        <p class="paragraphe-text">
                            {{ $row->desc }}.
                        </p>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
            </section>
            </div>
        </div>

            </div>
        </div>
	</section>
	@endif
	<!-- /Services Section/ -->

	<!-- Testimonial Section/ -->
	@if($testimonial_section->is_publish == 1)
	<section class="section testimonial-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Founders') }}</h5>
						<h2>{{ $testimonial_section->title }}</h2>
						@if($testimonial_section->desc != '')
						<p>{{ $testimonial_section->desc }}</p>
						@endif
					</div>
				</div>
			</div>
			<div class="row testimonial-slider">
				@foreach ($testimonial as $row)
				<div class="col-md-12">
					<div class="testimonial-card">
						<div class="client">
							<div class="img-card">
								<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" />
							</div>
							<div class="client-info">
								<h4>{{ $row->title }}</h4>
								<span>{{ __('Founder') }}</span>
							</div>
						</div>
						<div class="quote"><i class="bi bi-quote"></i></div>
						<div class="comment">{{ $row->desc }}</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
	@endif
	<!-- /Testimonial Section/ -->

	<!-- Blog Section/ -->
	@if($our_blogs_section->is_publish == 1)
	<section class="section blog-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Our Blogs') }}</h5>
						<h2>{{ $our_blogs_section->title }}</h2>
						@if($our_blogs_section->desc != '')
						<p>{{ $our_blogs_section->desc }}</p>
						@endif
					</div>
				</div>
			</div>
			<div class="row wow fadeIn">
				@foreach ($blogs as $row)
				<div class="col-12 col-md-6 col-lg-4">
					<div class="blog-card">
						<div class="blog-img">
							<a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
								<img src="{{ asset('public/media/'.$row->thumbnail) }}" alt="{{ $row->title }}" />
							</a>
						</div>
						<div class="blog-content">
							<div class="blog-meta-card">
								<div class="blog-date"><i class="bi bi-alarm"></i>{{ date('d M , Y', strtotime($row->created_at)) }}</div>
								<div class="blog-meta"><i class="bi bi-person"></i>{{ __('By') }}, {{ $row->name }}</div>
							</div>
							<div class="blog-title">
								<h4><a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">{{ $row->title }}</a></h4>
							</div>
							<div class="read-more-btn">
								<a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
									{{ __('Read More') }} <i class="bi bi-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
	@endif
	<!-- /Blog Section/ -->
</main>

@push('scripts')
<style>
    .main-card {
  margin-bottom: 110px;
}
img {
  width: 100%;
  object-fit: cover;
}
.text-card {
  background-color: rgb(255, 255, 255);
  bottom: -70px;
  padding: 25px;
  width: 100%;
  height: 250px;
}
.paragraphe-text {
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 12;
  -webkit-box-orient: vertical;
  width: 100%;
  cursor: pointer;
  padding: 0px 10px;
  font-family: 'Cairo', sans-serif;
  margin-bottom: 0;
  padding: 0;
}
.text-card h3 {
  font-family: 'Cairo', sans-serif;
  font-weight: 700;
  margin-bottom: 15px;
}
</style>
@endpush
