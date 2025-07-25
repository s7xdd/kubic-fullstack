<section id="testimonials" class="relative bg-black pb-[100px] text-white overflow-hidden fade-wrapper">
    <x-container>
        <div class="text-center relative z-10 fade-top">
            <p class="text-primary text-sm uppercase tracking-widest font-light mb-2">
                {{ $page->getTranslation('heading8', $lang) }}</p>
            <h2 class="text-3xl md:text-5xl font-sans font-light leading-tight mb-10">
                {{ $page->getTranslation('content', $lang) }}
            </h2>
        </div>

        <div class="swiper testimonialSwiper max-w-3xl mx-auto relative z-10 fade-top">
            <div class="swiper-wrapper">
                @php
                    $testimonials = $testimonials->map(function ($testimonial) {
                        return [
                            'name' => $testimonial->name,
                            'text' => $testimonial->comment,
                        ];
                    });

                @endphp

                @foreach ($testimonials as $t)
                    <div class="swiper-slide text-center px-6">
                        <p class="text-primary text-sm mb-4">{{ $t['name'] }}</p>
                        <p class="text-lg md:text-2xl font-sans font-light leading-relaxed text-white">
                            {{ $t['text'] }}
                        </p>
                    </div>
                @endforeach
            </div>

            <div class="swiper-pagination mt-12 !relative flex justify-center"></div>
        </div>
    </x-container>
</section>
