<div x-data="{
    open: false,
    hovered: null,
}">
    <button @click="open = true"
        class="w-12 h-12 !p-2 flex items-center justify-center text-white text-xl bg-transparent hover:bg-primary hover:text-black transition duration-300"
        aria-label="Open menu">
        <i class="flex fi fi-rs-burger-menu"></i>
    </button>


    <div x-show="open" x-transition:enter="transition-transform duration-500 ease-in-out"
        x-transition:enter-start="translate-x-full" x-transition:enter-end="translate-x-0"
        x-transition:leave="transition-transform duration-400 ease-in" x-transition:leave-start="translate-x-0"
        x-transition:leave-end="translate-x-full"
        class="fixed top-0 left-0 z-50 h-screen w-full flex bg-black bg-opacity-95" tabindex="-1"
        @keydown.escape.window="open = false" @click.away="open = false">


        <div class="hidden md:flex w-1/2 h-full items-center justify-center relative bg-black/70 overflow-hidden">
            <img x-show="!hovered" src="{{ uploaded_asset(get_setting('site_default_image')) }}" alt=""
                class="absolute inset-0 w-full h-full object-cover transition-all duration-700 ease-in-out scale-100 opacity-100"
                :class="{ 'opacity-100 scale-100': !hovered, 'opacity-0 scale-105': hovered }" />


            @php
                $menuImages = [
                    'home' => uploaded_asset(get_setting('site_home_image')),
                    'about' => uploaded_asset(get_setting('site_about_image')),
                    'services' => uploaded_asset(get_setting('site_services_image')),
                    'projects' => uploaded_asset(get_setting('site_projects_image')),
                    'contact' => uploaded_asset(get_setting('site_contact_image')),
                ];
            @endphp

            <template x-for="(img, key) in {{ json_encode($menuImages) }}" :key="key">
                <img :src="img" alt=""
                    class="absolute inset-0 w-full h-full object-cover transition-all duration-700 ease-in-out scale-105 opacity-0"
                    :class="{ 'opacity-100 scale-100': hovered === key, 'opacity-0 scale-105': hovered !== key }" />
            </template>
        </div>


        <div class="flex flex-col justify-center w-full md:w-1/2 px-8 max-w-3xl relative text-white">
            <button @click="open = false"
                class="absolute top-6 p-2 right-8 text-primary text-3xl bg-black/60 hover:bg-primary hover:text-black transition duration-300 z-10"
                aria-label="Close menu">
                <i class="flex fi fi-rs-cross"></i>
            </button>

            <nav class="flex flex-col mt-20 space-y-6 text-[60px] leading-[1.2] font-light">
                <a href="/"
                    class="group flex justify-between items-end border-b border-white/10 pb-2 hover:text-primary transition relative"
                    @mouseenter="hovered = 'home'" @mouseleave="hovered = null">
                    <span>Home</span>
                    <i
                        class="fi fi-ts-arrow-up-right text-primary text-3xl opacity-0 translate-y-4 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                </a>

                <div class="relative border-b border-white/10 pb-2">
                    <a href="{{ route('about-us') }}"
                        class="group flex justify-between items-end w-full text-left hover:text-primary transition"
                        @mouseenter="hovered = 'about'" @mouseleave="hovered = null">
                        <span>About</span>
                        <i
                            class="fi fi-ts-arrow-up-right text-primary text-3xl opacity-0 translate-y-4 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                    </a>
                </div>

                <div x-data="{ serviceOpen: false }" class="relative border-b border-white/10 pb-2">
                    <button @click="serviceOpen = !serviceOpen" @mouseenter="hovered = 'services'"
                        @mouseleave="hovered = null"
                        class="group flex justify-between items-end w-full text-left hover:text-primary transition">
                        <span>Services</span>
                        <i
                            class="fi fi-ts-arrow-up-right text-primary text-3xl opacity-0 translate-y-4 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                    </button>

                    @unless (empty($services))
                        <div x-show="serviceOpen" x-transition:enter="transition ease-out duration-300"
                            x-transition:enter-start="opacity-0 -translate-y-2"
                            x-transition:enter-end="opacity-100 translate-y-0"
                            x-transition:leave="transition ease-in duration-200"
                            x-transition:leave-start="opacity-100 translate-y-0"
                            x-transition:leave-end="opacity-0 -translate-y-2" class="mt-4 space-y-2 pl-6 text-[36px]">


                            @foreach ($services as $service)
                                <a href="{{ route('services.show', $service->slug) }}"
                                    class="group flex justify-between items-end hover:text-primary transition">
                                    <span>{{ $service->name }}</span>
                                    <i
                                        class="fi fi-ts-arrow-up-right text-primary text-2xl opacity-0 translate-y-3 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                                </a>
                            @endforeach


                        </div>
                    @endunless
                </div>


                <a href="{{ route('projects.index') }}"
                    class="group flex justify-between items-end border-b border-white/10 pb-2 hover:text-primary transition relative"
                    @mouseenter="hovered = 'projects'" @mouseleave="hovered = null">
                    <span>Projects</span>
                    <i
                        class="fi fi-ts-arrow-up-right text-primary text-3xl opacity-0 translate-y-4 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                </a>


                <a href="{{ route('contact') }}"
                    class="group flex justify-between items-end border-b border-white/10 pb-2 hover:text-primary transition relative"
                    @mouseenter="hovered = 'contact'" @mouseleave="hovered = null">
                    <span>Contact</span>
                    <i
                        class="fi fi-ts-arrow-up-right text-primary text-3xl opacity-0 translate-y-4 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300 ease-out"></i>
                </a>
            </nav>


            <a href="{{ route('contact') }}"
                class="mt-10 inline-flex items-baseline justify-between gap-2 px-6 py-3 max-w-md bg-primary text-black font-light hover:bg-secondary hover:text-white transition-all text-xl">
                Request a Quote
                <i class="fi fi-ts-arrow-up-right text-lg"></i>
            </a>

            @php
                $socialLinks = [
                    'facebook_link' => 'fi fi-brands-facebook',
                    'twitter_link' => 'fi fi-brands-twitter',
                    'instagram_link' => 'fi fi-brands-instagram',
                    'youtube_link' => 'fi fi-brands-youtube',
                    'linkedin_link' => 'fi fi-brands-linkedin',
                ];
            @endphp
            <div class="flex space-x-6 text-3xl mt-10">
                @foreach ($socialLinks as $key => $icon)
                    <a href="{{ get_setting($key) }}" class="hover:text-primary transition"><i
                            class="{{ $icon }}"></i></a>
                @endforeach
            </div>
        </div>
    </div>
