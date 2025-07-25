<section id="projects" class="bg-black text-white py-[120px] border-b border-gray-800">
    <div x-data="{ tab: 'completed' }" x-cloak class="relative container mx-auto px-4">

        <div class="text-left mb-14">
            <p class="text-sm text-primary uppercase font-light tracking-widest mb-3">
                {{ $main_page->getTranslation('heading2', $lang) }}
            </p>
            <h2 class="text-4xl md:text-5xl font-sans font-light leading-tight">
                {{ $main_page->getTranslation('title2', $lang) }}
            </h2>
        </div>

        <div class="flex flex-wrap gap-4 mb-12">
            <button @click="tab = 'completed'" type="button"
                class="px-6 py-2 rounded-full border transition-all duration-300 font-light text-sm focus:outline-none"
                :class="tab === 'completed'
                    ?
                    'bg-primary text-black border-primary' :
                    'border-white text-white hover:bg-white hover:text-black'">
                Completed Projects
            </button>
            <button @click="tab = 'upcoming'" type="button"
                class="px-6 py-2 rounded-full border transition-all duration-300 font-light text-sm focus:outline-none"
                :class="tab === 'upcoming'
                    ?
                    'bg-primary text-black border-primary' :
                    'border-white text-white hover:bg-white hover:text-black'">
                Upcoming Projects
            </button>
        </div>

        <div class="relative">

            <div x-show="tab === 'completed'" x-transition:enter="transition ease-out duration-300"
                x-transition:enter-start="opacity-0 scale-95" x-transition:enter-end="opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-200" x-transition:leave-start="opacity-100 scale-100"
                x-transition:leave-end="opacity-0 scale-95">
                {!! renderProjects($completedProjects, 'completed') !!}
            </div>

            <div x-show="tab === 'upcoming'" x-transition:enter="transition ease-out duration-300"
                x-transition:enter-start="opacity-0 scale-95" x-transition:enter-end="opacity-100 scale-100"
                x-transition:leave="transition ease-in duration-200" x-transition:leave-start="opacity-100 scale-100"
                x-transition:leave-end="opacity-0 scale-95">
                {!! renderProjects($upcomingProjects, 'upcoming') !!}
            </div>
        </div>
    </div>
</section>
