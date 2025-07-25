<section id="our-story" class="bg-black text-white border-b border-gray-800 overflow-hidden py-24">
    @php
        $about = json_decode($page->getTranslation('heading9', $lang), true) ?? [];
    @endphp

    <x-container>
        <div class="md:grid md:grid-cols-12 gap-12 items-start">
            <div class="md:col-span-4 mb-10 md:mb-0 border-l-2 border-[#C5A26B] pl-6">
                <h2 id="story-heading" class="text-3xl md:text-4xl font-sans font-light leading-snug text-white">
                    @php
                        $text = $about[0]['heading'] ?? '';
                        $formattedText = preg_replace_callback(
                            '/\b(\w+)\b/',
                            function ($matches) {
                                return $matches[0] . '<br />';
                            },
                            $text,
                        );
                    @endphp

                    {!! $formattedText !!}

                </h2>
            </div>

            <div class="md:col-span-8 space-y-6 text-sm text-white/80 leading-relaxed">
                <h2 id="story-lead" class="font-light text-white text-2xl md:text-3xl">
                    {{ $about[0]['title'] ?? '' }}
                </h2>

                <p class="story-paragraph font-light">
                    {{ $about[0]['description'] }}
                </p>
            </div>
        </div>
    </x-container>
</section>
