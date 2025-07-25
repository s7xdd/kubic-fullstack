@extends('layouts.app')

@section('content')
    @include('sections.common.hero', [
        'title' => $page->getTranslation('title', $lang),
        'subtitle' => $page->getTranslation('sub_title', $lang),
        'image' => asset('images/contact/hero.jpg'),
    ])

    <section class="bg-black text-white py-24 border-b border-secondary font-light">
        <x-container>
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-16">

                <div id="contact-info" class="relative bg-[#151515] p-10 shadow-lg border border-white/10">
                    <h2 class="text-3xl md:text-4xl font-sans text-primary mb-6">
                        {{ $page->getTranslation('heading2', $lang) }}</h2>

                    <p class="text-white/70 mb-6 max-w-lg leading-relaxed">
                        {{ $page->getTranslation('heading3', $lang) }}
                    </p>

                    <div class="space-y-4 text-sm text-white/80 mb-10 leading-relaxed">
                        {!! $page->getTranslation('content', $lang) !!}
                    </div>

                    <h3 class="uppercase text-sm font-semibold text-white/60 tracking-widest mb-3">Follow Us</h3>

                    <div class="flex items-center gap-3" id="social-icons">
                        @php
                            $socials = [
                                ['label' => 'Facebook', 'icon' => 'facebook'],
                                ['label' => 'Twitter', 'icon' => 'twitter-alt'],
                                ['label' => 'Instagram', 'icon' => 'instagram'],
                                ['label' => 'Youtube', 'icon' => 'youtube'],
                                ['label' => 'LinkedIn', 'icon' => 'linkedin'],
                            ];
                        @endphp

                        @foreach ($socials as $key => $social)
                            <a href="{{ get_setting($key) }}" aria-label="{{ $social['label'] }}"
                                class="group w-10 h-10 flex items-center justify-center rounded-full border border-white/10 bg-white/5 hover:bg-primary/20 hover:border-primary text-white transition duration-200">
                                <i class="fi fi-brands-{{ $social['icon'] }} group-hover:text-primary leading-3"></i>
                            </a>
                        @endforeach
                    </div>
                </div>

                <form action="{{ route('contact.submit') }}" method="POST" id="contact-form"
                    class="bg-[#151515] p-8 rounded space-y-6">
                    @csrf

                    <h2 class="text-xl text-white mb-4">Request a Callback</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-sm mb-1">Full Name*</label>
                            <input type="text" name="name" placeholder="Your full name"
                                class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary" />
                            @error('name')
                                <div class="text-red-600">{{ $message }}</div>
                            @enderror
                        </div>
                        <div>
                            <label class="block text-sm mb-1">Email*</label>
                            <input type="email" name="email" placeholder="Your email address"
                                class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary" />
                            @error('email')
                                <div class="text-red-600">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div>
                        <label class="block text-sm mb-1">Telephone*</label>
                        <input type="tel" name="phone" placeholder="Your phone number"
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary" />
                        @error('phone')
                            <div class="text-red-600">{{ $message }}</div>
                        @enderror
                    </div>
                    <div>
                        <label class="block text-sm mb-1">Message</label>
                        <textarea name="message" rows="5" placeholder="Your message..."
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary"></textarea>
                        @error('message')
                            <div class="text-red-600">{{ $message }}</div>
                        @enderror
                    </div>
                    <button type="submit"
                        class="w-full bg-secondary text-white font-semibold py-3 px-6 hover:bg-secondary/90 transition rounded">
                        Call Me Back
                    </button>

                    @if (session('success'))
                        <div class="p-4 mb-4 text-green-700 bg-green-100 rounded">
                            {{ session('success') }}
                        </div>
                    @endif
                    @if ($errors->any())
                        <div class="mt-4 text-white">
                            {{ $errors->first() }}
                        </div>
                    @endif
                </form>

            </div>
        </x-container>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            gsap.registerPlugin(ScrollTrigger);

            gsap.from("#contact-info", {
                scrollTrigger: {
                    trigger: "#contact-info",
                    start: "top 80%",
                },
                opacity: 0,
                y: 50,
                duration: 1,
                ease: "power2.out"
            });

            gsap.from("#contact-form", {
                scrollTrigger: {
                    trigger: "#contact-form",
                    start: "top 80%",
                },
                opacity: 0,
                y: 50,
                duration: 1,
                delay: 0.3,
                ease: "power2.out"
            });

            gsap.from("#social-icons a", {
                scrollTrigger: {
                    trigger: "#social-icons",
                    start: "top 90%",
                },
                opacity: 0,
                scale: 0.8,
                stagger: 0.1,
                duration: 0.5,
                ease: "back.out(1.7)"
            });
        });
    </script>
@endsection
