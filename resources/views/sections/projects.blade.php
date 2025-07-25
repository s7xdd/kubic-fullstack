<section id="projects-home" class="bg-black text-white pb-[50px]">
    <x-container>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-10 items-start">
            <div class="space-y-8">
                <div class="pl-[10%]">
                    <div class="text-sm text-[#C5A26B] uppercase font-light tracking-widest">
                        {{ $page->getTranslation('heading1', $lang) }}
                    </div>
                    <h2 class="text-3xl md:text-5xl font-sans font-light leading-tight mt-4">
                        @php
                            $text = $page->getTranslation('heading2', $lang);
                            $formattedText = preg_replace('/\[(.*?)\]/', '<br><span>$1</span>', $text);
                        @endphp
                        {!! $formattedText !!}
                    </h2>
                </div>

                @php
                    $firstProject = $projects->first();
                @endphp

                <a href="{{ '' }}"
                    class="project-block group block border border-primary/10 hover:border-primary/50 transition-all duration-500 p-2">
                    <div class="relative overflow-hidden">
                        <img src="{{ uploaded_asset($firstProject['image']) }}" alt="Mount Street"
                            class="project-image w-full h-auto object-cover will-change-transform transition-transform duration-700 group-hover:scale-105" />
                    </div>

                    <div class="flex flex-col md:flex-row items-start gap-4 mt-5">
                        <div class="project-number-outline !font-sans text-2xl">01</div>
                        <div>
                            <div
                                class="project-title text-lg md:text-2xl uppercase font-sans font-light !leading-6 text-white group-hover:text-[#C5A26B] transition-colors duration-300">
                                {{ $firstProject->getTranslation('name', $lang) }}
                            </div>
                            <p class="project-desc text-sm text-white/70 max-w-xl leading-4">
                                {{ $firstProject['subtitle'] }}
                            </p>
                        </div>
                    </div>
                </a>
            </div>

            <div class="space-y-10">

                @php
                    $restProjects = $projects->skip(1);
                @endphp

                @foreach ($restProjects as $index => $project)
                    <a href="{{ '' }}"
                        class="project-block group block border border-primary/10 hover:border-primary/50 transition-all duration-500 p-2">
                        <div class="relative overflow-hidden">
                            <img src="{{ uploaded_asset($project['image']) }}"
                                alt="{{ $firstProject->getTranslation('name', $lang) }}"
                                class="project-image w-full h-auto object-cover will-change-transform transition-transform duration-700 group-hover:scale-105" />
                        </div>

                        <div class="flex flex-col md:flex-row items-start gap-4 mt-5">
                            <div class="project-number-outline !font-sans text-2xl">
                                {{ $index + 1 }}
                            </div>
                            <div>
                                <div
                                    class="project-title text-lg md:text-2xl uppercase font-sans font-light !leading-6 text-white group-hover:text-[#C5A26B] transition-colors duration-300">
                                    {{ $project->getTranslation('name', $lang) }}
                                </div>
                                <p class="project-desc text-sm text-white/70 max-w-xl leading-4 font-light">
                                    {{ $project['subtitle'] }}
                                </p>
                            </div>
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
    </x-container>
</section>
