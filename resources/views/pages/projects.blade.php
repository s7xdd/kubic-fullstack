@extends('layouts.app')

@section('content')
    @include('sections.common.hero', [
        'title' => $main_page->getTranslation('title', $lang) ,
        'subtitle' => $main_page->getTranslation('title1', $lang) ,
        'image' => asset('images/projects/hero.jpg'),
    ])

@include('sections.projects.list')

    <section class="bg-black text-white py-20">
        @include('sections.form-cta')
    </section>
@endsection
