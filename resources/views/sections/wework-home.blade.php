<section id="where-we-work" class="relative bg-black text-white py-[100px] px-6 md:px-12 lg:px-24">
    <div class="absolute inset-0 bg-cover bg-center z-0" style="background-image: url('/images/bg-where-we-work-2.png');"
        id="wwwork-bg"></div>
    <div class="relative z-10 w-full max-w-[1000px] mx-auto h-full overflow-hidden">
        <div class="text-center max-w-5xl mx-auto">
            <h4 class="text-sm tracking-widest text-[#c38a42] font-light uppercase mb-2 scroll-fade">
                {{ $page->getTranslation('heading5', $lang) }}</h4>
            <h2 class="text-3xl md:text-5xl font-sans font-light leading-tight mb-10 scroll-fade">
                @php
                    $text = $page->getTranslation('heading6', $lang);
                    $formattedText = preg_replace('/\[(.*?)\]/', '<br><span>$1</span>', $text);
                @endphp
                {!! $formattedText !!}
            </h2>

            @php
                $dynamicItems1 = collect(json_decode($page->getTranslation('content1', $lang), true) ?? []);
            @endphp

            @if ($dynamicItems1->isNotEmpty())
                <div class="flex justify-center gap-8 text-lg md:text-xl font-sans mb-12 scroll-fade">
                    @foreach ($dynamicItems1 as $index => $item)
                        <button
                            class="tab-btn {{ $index === 0 ? 'active-tab text-[#c38a42] border-b border-[#c38a42]' : 'text-white hover:text-[#c38a42]' }} uppercase transition font-light"
                            data-tab="{{ Str::slug($item['name'], '-') }}">
                            {{ $item['name'] }}
                        </button>
                    @endforeach
                </div>

                <div class="relative max-w-2xl mx-auto min-h-[180px]" id="tab-wrapper">
                    @foreach ($dynamicItems1 as $index => $item)
                        <div class="tab-content {{ $index !== 0 ? 'hidden absolute top-0 left-0 w-full' : '' }} border border-[#c38a42] p-6 fade-tab"
                            id="{{ Str::slug($item['name'], '-') }}">
                            <h3 class="text-xl md:text-2xl font-sans mb-3 font-light">{{ $item['title'] ?? '' }}</h3>
                            <p class="text-sm md:text-base font-light text-white/90 leading-relaxed">
                                {!! nl2br(e($item['content'] ?? '')) !!}
                            </p>
                        </div>
                    @endforeach
                </div>
            @endif

        </div>
    </div>
</section>
