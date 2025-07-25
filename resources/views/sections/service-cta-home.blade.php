<section id="service-cta-home" class="relative bg-black text-white overflow-hidden w-full">
    <div class="flex flex-col md:flex-row items-center py-20 gap-8 relative z-10">

        <div class="relative md:basis-[50%] px-10 py-14 bg-[#9C6B35] animate-left-scroll">
            <div class="absolute inset-0 bg-[url('/images/pattern-grid.svg')] opacity-10 bg-repeat z-0"></div>
            <div class="relative z-10 pl-[10%]">
                <h3 class="text-2xl md:text-4xl font-sans font-light leading-snug uppercase mb-6 gsap-fade-in">
                    @php
                        $text = $page->getTranslation('title2', $lang);
                        $formattedText = preg_replace('/\[(.*?)\]/', '<br><span>$1</span>', $text);
                    @endphp
                    {!! $formattedText !!}
                </h3>
                <p class="text-md md:text-xl font-sans font-light  leading-relaxed mb-8 gsap-fade-in">
                    {{ $page->getTranslation('content2', $lang) }}
                </p>
                <a href="#"
                    class="inline-flex items-center gap-2 text-sm uppercase tracking-wide group gsap-fade-in font-sans">
                    Read More
                    <svg class="w-4 h-4 transform group-hover:translate-x-1 transition" fill="none"
                        stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M5 12h14m-6-6l6 6-6 6" />
                    </svg>
                </a>
            </div>
        </div>

        <div class="relative animate-right-scroll">
            <div class="relative w-[600px] h-auto group perspective">
                <img src="{{ uploaded_asset($page->image9) }}" alt="Room Design"
                    class="w-full h-full object-cover transform-gpu transition-transform duration-500 ease-out motion-image shadow-xl" />
                <div class="absolute inset-0 flex flex-col justify-center pl-6 md:pl-[300px] z-10">
                    <h2 class="text-white font-sans font-light  leading-tight tracking-tight gsap-heading">
                        @php
                            $text = $page->getTranslation('heading7', $lang);
                            preg_match('/\[(.*?)\]/', $text, $matches);

                            $middle = $matches[1] ?? '';
                            $beforeAfter = preg_split('/\[(.*?)\]/', $text);
                            $segments = [];
                            if (!empty($beforeAfter[0])) {
                                $segments[] = trim($beforeAfter[0]);
                            }
                            if (!empty($middle)) {
                                $segments[] = trim($middle);
                            }
                            if (!empty($beforeAfter[1])) {
                                $segments[] = trim($beforeAfter[1]);
                            }
                        @endphp

                        @foreach ($segments as $index => $part)
                            <div
                                class="text-4xl md:text-6xl {{ $index === 1 ? 'text-primary pl-6 md:pl-10' : ($index === 2 ? 'pl-12 md:pl-20' : '') }} gsap-line">
                                {{ $part }}
                            </div>
                        @endforeach

                    </h2>
                </div>
            </div>
        </div>

    </div>
</section>
