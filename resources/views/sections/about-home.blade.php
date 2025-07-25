<section id="about-home" class="relative bg-black text-white  -mt-[5px]">
    <x-container>
        <div class="flex flex-col md:flex-row items-start py-20 gap-5">
            <div class="flex-shrink-0 w-full md:w-[10%]">
                <div
                    class="about-home-logo w-24 md:w-32 p-3 flex flex-col items-end justify-end overflow-hidden bg-[#81562A]">
                    <img src="{{ asset('images/logo-black.svg') }}" alt="Kubik Logo"
                        class="w-full h-full object-contain logo-image" loading="lazy" />
                    <span
                        class="mt-[70px] text-xs font-light tracking-widest uppercase text-white/80 text-center md:text-left block font-sora logo-text">
                        {{ $page->getTranslation('title1', $lang) }}
                    </span>
                </div>
            </div>

            <div class="w-full md:w-[90%] flex items-start pt-[115px]">
                <div class="mx-auto md:mx-0 text-center md:text-left">
                    <h2
                        class="about-home-heading font-sans font-light text-3xl md:text-[50px] !leading-[55px] space-y-4">
                        <div class="overflow-hidden">
                            {!! $page->getTranslation('description1', $lang) !!}
                        </div>
                    </h2>
                </div>
            </div>
        </div>
    </x-container>
</section>
