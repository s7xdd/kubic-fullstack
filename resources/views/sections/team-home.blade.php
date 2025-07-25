<section id="team-home" class="bg-black text-white py-24">
    <x-container>
        <div class="text-center mb-16">
            <h2 class="text-3xl md:text-[150px] font-sans font-light team-title">Meet Our Team</h2>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            @php
                $teamMembers = json_decode($page->getTranslation('heading9', $lang), true) ?? [];

                $team = collect($teamMembers)
                    ->map(function ($member) {
                        return [
                            'name' => $member['title'] ?? '',
                            'role' => $member['designation'] ?? '',
                            'image' => $member['image'] ?? '',
                        ];
                    })
                    ->toArray();
            @endphp

            @foreach ($team as $member)
                <div class="border border-[#c38a42] p-1 team-card group overflow-hidden">
                    <div class="overflow-hidden">
                        <img src="{{ uploaded_asset($member['image']) }}" alt="{{ $member['name'] }}"
                            class="w-full h-auto filter grayscale group-hover:filter-none transition-all duration-700 ease-out transform group-hover:scale-105" />
                    </div>
                    <div class="p-4">
                        <h3
                            class="text-lg font-light font-sans group-hover:text-[#c38a42] transition-colors duration-300">
                            {{ $member['name'] }}</h3>
                        <p class="text-[#c38a42] text-sm mt-1">{{ $member['role'] }}</p>
                    </div>
                </div>
            @endforeach
        </div>
    </x-container>
</section>
