<section id="ctaSection" class="relative overflow-hidden text-white py-[100px] px-6 md:px-12 lg:px-24">
    <div id="ctaBg" class="absolute inset-0 bg-cover bg-center z-0 will-change-transform"
        style="background-image: url('{{ asset('images/bg-cta.jpg') }}');"></div>

    <x-container>
        <div class="relative z-10 grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div id="ctaText" class="scroll-fade">
                <h2 class="text-white text-4xl md:text-5xl font-sans font-light leading-tight mb-6">
                    @php
                        $heading10Data = json_decode($page->getTranslation('heading10', $lang), true) ?? [];

                        $heading = explode(' ', $heading10Data['title'] ?? '');
                        $newHeading = [];
                        $count = 0;
                        foreach ($heading as $word) {
                            if ($count % 3 == 0 && $count != 0) {
                                array_push($newHeading, '<br>');
                            }
                            array_push($newHeading, $word);
                            $count++;
                        }
                    @endphp
                    {!! implode(' ', $newHeading) !!}
                </h2>

                <p class="text-primary text-base leading-relaxed mb-8 max-w-md pb-6 border-b border-primary">
                    {{ $heading10Data['subtitle'] }}
                </p>

                <a href="{{ route('contact') }}"
                    class="inline-block bg-secondary text-white font-extralight py-3 px-6 hover:bg-secondary/90 transition">
                    {{ $heading10Data['button_text'] }}
                </a>
            </div>

            <form id="ctaForm" action="{{ route('contact.submit') }}" method="POST"
                class="scroll-fade bg-black/50 backdrop-blur-sm p-8 space-y-6 ">
                @csrf

                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                        <label for="name" class="block text-sm mb-1">Name*</label>
                        <input type="text" id="name" name="name" required
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary"
                            placeholder="First name">

                        @error('name')
                            <div class="text-red-600">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="md:col-span-1">
                        <label for="email" class="block text-sm mb-1">Email*</label>
                        <input type="email" id="email" name="email" required
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary"
                            placeholder="Email">
                        @error('email')
                            <div class="text-red-600">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 items-center">
                    <div>
                        @php
                            $countries = \App\Models\Countries::orderBy('countryName')->get();
                            $defaultCountry = $countries->first();
                        @endphp
                        <label for="country_code" class="block text-sm mb-1">Phone number*</label>
                        <select id="country_code" name="country_code" required
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 appearance-none focus:outline-none focus:ring-2 focus:ring-primary">
                            @foreach ($countries as $country)
                                <option class="text-black" value="{{ $country->telephonePrefix }}"
                                    {{ $loop->first ? 'selected' : '' }}>
                                    {{ $country->countryName }} ({{ $country->telephonePrefix }})
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="md:col-span-2">
                        <label class="block text-sm invisible mb-1">Phone</label>
                        <input type="tel" name="phone" required
                            class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary"
                            placeholder="1234 567 8900">
                        @error('phone')
                            <div class="text-red-600">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div>
                    <label for="message" class="block text-sm mb-1">Message*</label>
                    <textarea id="message" name="message" rows="4" required
                        class="w-full bg-transparent border border-white/30 text-white py-3 px-4 placeholder-white/60 focus:outline-none focus:ring-2 focus:ring-primary"
                        placeholder="Tell us about your requirements..."></textarea>
                    @error('message')
                        <div class="text-red-600">{{ $message }}</div>
                    @enderror
                </div>

                @if (session('success'))
                    <div class="p-4 mb-4 text-green-700 bg-green-100 rounded">
                        {{ session('success') }}
                    </div>
                @endif

                <button type="submit"
                    class="w-full bg-secondary text-white font-semibold py-3 px-6 hover:bg-secondary/90 transition">
                    Submit
                </button>

            </form>
        </div>
    </x-container>

    @push('scripts')
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                const form = document.getElementById("ctaForm");
                const countryCodeSelect = document.getElementById("country_code");
                const phoneInput = form.querySelector("[name='phone']");

                form.addEventListener("submit", function(e) {
                    const dialCode = countryCodeSelect.value;
                    let phone = phoneInput.value.trim();

                    phone = phone.replace(/^\+?\d+/, match => match.startsWith('+') ? '' : phone);

                    phoneInput.value = `${dialCode}${phone}`.replace(/\s+/g, '');
                });
            });
        </script>
    @endpush
</section>
