<section id="who-we-work-with" class="bg-black text-white border-b border-secondary py-24 fade-wrapper">
    @php
        $animatedBlocks = json_decode($page->getTranslation('heading5', $lang) ?? '[]', true);
        $highlights = json_decode($page->getTranslation('heading6', $lang) ?? '[]', true);
        $partners = explode(',', $page->getTranslation('heading7', $lang));
    @endphp

    <x-container>
        <div class="text-center mb-16 fade-top">
            <p class="text-xs uppercase tracking-widest text-primary mb-3 font-light">Who We Work With</p>
            <h2 class="text-3xl md:text-5xl font-sans font-light leading-tight text-white">
                Collaborating with visionaries to shape exceptional spaces.
            </h2>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-20">
            @php
                $stats = array_map(function ($highlight) {
                    return [
                        'label' => $highlight['heading'] ?? '',
                        'value' => $highlight['title'] ?? '',
                        'desc' => $highlight['description'] ?? '',
                    ];
                }, $highlights);
            @endphp

            @foreach ($stats as $stat)
                <div
                    class="bg-[#151515] py-6 px-6 rounded-lg fade-top border border-white/5 hover:border-primary transition duration-300">
                    <p class="text-sm text-white/50 mb-1 font-light">{{ $stat['label'] }}</p>
                    <h3 class="text-2xl md:text-3xl text-primary mb-2 font-light">{{ $stat['value'] }}</h3>
                    <p class="text-xs text-white/70 leading-snug font-light">{{ $stat['desc'] }}</p>
                </div>
            @endforeach
        </div>

        <div class="text-center mb-10 fade-top">
            <p class="text-sm text-white/60 font-light">
                {{ $page->getTranslation('heading8', $lang) }}
            </p>
        </div>

        <div class="flex flex-wrap justify-center items-center gap-6 fade-top">
            @foreach ($partners as $partner)
                <div
                    class="bg-[#151515] px-6 py-4 rounded-full flex items-center justify-center h-[60px] w-[120px] hover:border-primary border border-white/5 transition">
                    <img src="{{ uploaded_asset($partner) }}" alt="{{ 'Client' }}"
                        class="h-6 object-contain grayscale hover:grayscale-0 transition duration-300 ease-in-out" />
                </div>
            @endforeach
        </div>
    </x-container>
</section>
