<footer class="bg-black text-white text-sm pt-[100px] fade-anim">
    <x-container class="py-16">
        <div class="flex flex-col lg:flex-row justify-between items-end gap-10 pb-14 footer-anim">
            <div>
                <img src="{{ get_setting('site_logo_colored') ? uploaded_asset(get_setting('site_logo_colored')) : asset('images/logo.svg') }}"
                    alt="Kubik Construction" class="mb-6 max-w-[180px]">
            </div>



            <div class="lg:text-right">
                <p class="uppercase text-gray-400 mb-3">Stay in touch</p>

                @php
                    $socialLinks = [
                        'facebook_link' => 'fi fi-brands-facebook',
                        'twitter_link' => 'fi fi-brands-twitter',
                        'instagram_link' => 'fi fi-brands-instagram',
                        'youtube_link' => 'fi fi-brands-youtube',
                        'linkedin_link' => 'fi fi-brands-linkedin',
                    ];
                @endphp
                <div class="flex gap-4 text-xl lg:justify-end">
                    @foreach ($socialLinks as $key => $icon)
                        <a href="{{ get_setting($key) }}" class="hover:text-[#c38a42] transition-all"><i
                                class="{{ $icon }}"></i></a>
                    @endforeach
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <div class="footer-anim">
                <p class="uppercase text-gray-400 text-xs mb-1">Visit us</p>
                <p> {{ get_setting('footer_address') }}</p>
            </div>

            <div class="footer-anim">
                <p class="uppercase text-gray-400 text-xs mb-1">Call us</p>
                <p class="text-base">{{ get_setting('footer_phone') }}</p>
            </div>

            <div class="footer-anim">
                <p class="uppercase text-gray-400 text-xs mb-1">Mail us</p>
                <p class="text-base">{{ get_setting('footer_email') }}</p>
            </div>

            <div class="footer-anim">
                <p class="uppercase text-white/60 mb-2 text-sm tracking-wide">
                    {{ get_setting('footer_newsletter_title') }}</p>
                <form id="newsletter-form" class="flex flex-col gap-3 mt-2 w-full max-w-sm">
                    <input type="email" id="newsletter_email" name="newsletter_email"
                        placeholder={{ get_setting('footer_newsletter_subtitle') }}
                        class="w-full bg-transparent border border-white/40 text-white placeholder-white/50 px-4 py-2 text-sm outline-none focus:border-white transition-all duration-300" />
                    <button type="submit"
                        class="bg-[#8B5E2E] text-white text-sm py-2 transition-all duration-300 hover:bg-[#a8762c]">
                        {{ get_setting('footer_newsletter_button') }}
                    </button>
                    <p id="messageNewsletter" class="mt-2"></p>
                </form>
            </div>
        </div>
    </x-container>

    @include('layouts.footer.copyright')
</footer>
