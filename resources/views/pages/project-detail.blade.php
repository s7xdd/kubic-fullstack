@extends('layouts.app')

@section('content')

    @include('sections.common.hero', [
        'title' => $project['title'],
        'subtitle' => $project['subtitle'] ?? '',
        'image' => asset($project['hero']),
    ])

    @php
        $galleryImages = explode(',', $project['gallery'] ?? '');
    @endphp

    <section class="bg-black text-white py-24 border-b border-white/10 fade-wrapper font-sans font-light">
        <x-container>
            @if (!empty($project['stats']))
                <div class="fade-top mb-16">
                    <h3 class="text-2xl md:text-3xl text-primary mb-2">Project Highlights</h3>
                    <div class="w-20 h-[2px] bg-primary mb-8"></div>
                    <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-8 text-center">
                        @foreach ($project['stats'] as $stat)
                            <div
                                class="fade-top p-4 rounded border border-white/10 hover:border-primary transition-all duration-300">
                                <h3 class="text-primary text-3xl md:text-4xl font-light mb-2 stat-number"
                                    data-count="{{ $stat['title'] }}">{{ $stat['title'] }}</h3>
                                <p class="text-white/60 text-sm">{{ $stat['subtitle'] }}</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            @endif

            <div class="grid md:grid-cols-2 gap-16 items-start">
                <div>
                    <h2 class="fade-top text-3xl md:text-4xl text-primary mb-2">
                        {{ $project['title'] }}
                    </h2>

                    <div class="fade-top text-white/50 text-sm mb-6 space-x-2">
                        @if (!empty($project['type']))
                            @php
                                $types = explode(',', $project['type']);
                            @endphp
                            @foreach ($types as $type)
                                <span class="inline-block px-3 py-1 bg-white/5 rounded-full border border-white/10">
                                    {{ $type }}
                                </span>
                            @endforeach
                        @endif
                        @if (!empty($project['place']))
                            <span class="inline-block px-3 py-1 bg-white/5 rounded-full border border-white/10">
                                {{ $project['place'] }}
                            </span>
                        @endif
                    </div>

                    @if (!empty($project['description']))
                        {!! $project['description'] !!}
                    @endif
                </div>

                @if (!empty($project['feature']))
                    <div class="fade-top overflow-hidden rounded-xl shadow-lg border border-white/10">
                        <img src="{{ uploaded_asset($project['feature']) }}" alt="{{ $project['title'] }} Feature Image"
                            class="w-full h-full object-cover transition-transform duration-500 hover:scale-105" />
                    </div>
                @endif
            </div>
        </x-container>
    </section>


    @if (!empty($galleryImages) && count($galleryImages))
        <section class="bg-[#111] py-24 relative">
            <div class="absolute right-0 top-0 h-full w-1 bg-primary/10"></div>
            <x-container>
                <div class="fade-top mb-12">
                    <h3 class="text-2xl md:text-3xl font-light text-primary mb-2">Gallery Preview</h3>
                    <div class="w-20 h-1 bg-primary mb-6"></div>
                </div>
                <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6" id="gallery">
                    @foreach ($galleryImages as $img)
                        <div data-pswp-width="1600" data-pswp-height="1067" target="_blank"
                            class="gallery-item block overflow-hidden rounded-lg shadow border border-white/10 hover:border-primary transition-all duration-300">
                            <img src="{{ uploaded_asset($img) }}" alt="{{ $project['title'] }} image"
                                class="w-full h-full object-cover transition-transform duration-500 hover:scale-105" />
                        </div>
                    @endforeach
                </div>
            </x-container>
        </section>
    @endif



    @include('sections.form-cta')

@endsection

@push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const lightbox = new PhotoSwipeLightbox({
                gallery: '#gallery',
                children: 'a',
                pswpModule: PhotoSwipe
            });
            lightbox.init();

            gsap.registerPlugin(ScrollTrigger);

            gsap.utils.toArray('.fade-top').forEach(el => {
                gsap.from(el, {
                    opacity: 0,
                    y: 40,
                    duration: 0.7,
                    ease: 'power2.out',
                    scrollTrigger: {
                        trigger: el,
                        start: 'top 90%',
                        toggleActions: 'play none none reverse'
                    }
                });
            });

            gsap.from('.gallery-item', {
                opacity: 0,
                y: 20,
                duration: 0.6,
                stagger: 0.1,
                ease: 'power2.out',
                scrollTrigger: {
                    trigger: '#gallery',
                    start: 'top 90%',
                    once: true
                }
            });

            document.querySelectorAll('.stat-number').forEach(stat => {
                let value = stat.getAttribute('data-count');
                let isNumber = !isNaN(parseFloat(value.replace(',', '').replace('%', '')));
                if (isNumber) {
                    let endValue = parseFloat(value);
                    let suffix = value.includes('%') ? '%' : '';
                    gsap.fromTo(stat, {
                        innerText: 0
                    }, {
                        innerText: endValue,
                        duration: 2,
                        ease: "power1.out",
                        snap: {
                            innerText: 1
                        },
                        scrollTrigger: {
                            trigger: stat,
                            start: "top 90%",
                        },
                        onUpdate: function() {
                            stat.innerText = Math.floor(stat.innerText).toLocaleString() +
                                suffix;
                        }
                    });
                }
            });
        });
    </script>
@endpush
