@extends('layouts.app')

@section('content')
    @include('sections.common.hero', [
        'title' => $service->getTranslation('name', $lang),
        'subtitle' => $service->getTranslation('short_description', $lang),
        'image' => uploaded_asset($service->image),
    ])

    <section class="bg-black text-white py-20 font-sans">
        <x-container>
            <div class="grid grid-cols-1 gap-12">

                <div class="relative grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                    <div>
                        <p class="text-sm uppercase text-primary tracking-widest mb-4">Our Services</p>
                        <h2 class="text-5xl font-light leading-[1.2] mb-6 text-primary">
                            {!! preg_replace('/^([^ ]* [^ ]*)/', '$1<br>', $service->getTranslation('short_title', $lang)) !!}
                        </h2>
                        <p class="text-white/70 max-w-xl text-base leading-relaxed">
                            {!! $service->getTranslation('description', $lang) !!}
                        </p>
                    </div>

                    <div class="hidden md:block">
                        <div class="relative w-full h-[400px] overflow-hidden rounded shadow-lg">
                            <img src="{{ asset('images/services/services-intro.png') }}" alt="Kubik Engineering Team at Work"
                                class="absolute inset-0 h-full w-full object-cover brightness-90 transition duration-300 hover:scale-105" />
                        </div>
                    </div>
                </div>

                <div class="divide-y divide-white/10">
                    @php
                        $services = $service->children
                            ->map(function ($child) use ($lang) {
                                return [
                                    'title' => $child->getTranslation('name', $lang),
                                    'desc' => $child->getTranslation('description', $lang),
                                    'image' => $child->image ? uploaded_asset($child->image) : null,
                                ];
                            })
                            ->toArray();
                    @endphp


                    @foreach ($services as $index => $service)
                        <div
                            class="group flex flex-col md:flex-row justify-between items-start md:items-center gap-6 py-8 transition-all duration-300 ease-in-out hover:bg-white/5 rounded-lg px-4">
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <span class="text-secondary text-base font-mono">
                                        {{ str_pad($index + 1, 2, '0', STR_PAD_LEFT) }}
                                    </span>
                                    <h3 class="text-2xl md:text-3xl font-light text-white">
                                        {{ $service['title'] }}
                                    </h3>
                                </div>
                                <p class="text-white/60 text-base leading-relaxed max-w-3xl">
                                    {!! $service['desc'] !!}
                                </p>
                            </div>
                            @if ($service['image'])
                                <div
                                    class="overflow-hidden rounded-md hidden md:block transition-all duration-500 ease-in-out w-70 h-36 group-hover:w-80 group-hover:h-44">
                                    <img src="{{ asset($service['image']) }}" alt="{{ $service['title'] }}"
                                        class="h-full w-full object-cover transition-transform duration-500 ease-in-out transform scale-95 group-hover:scale-100" />
                                </div>
                            @endif
                        </div>
                    @endforeach
                </div>

            </div>
        </x-container>
    </section>

    @include('sections.form-cta')
@endsection
