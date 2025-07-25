@extends('layouts.app')

@section('content')
    @include('sections.common.hero', [
        'title' =>  $page->getTranslation('title1', $lang),
        'subtitle' =>  $page->getTranslation('title2', $lang),
        'image' => asset('/images/about/hero.jpg'),
    ])

    @include('sections.about.about-us')

    @include('sections.about.story')

    @include('sections.about.values')

    @include('sections.about.clients')

    @include('sections.about.image-scroll')
@endsection
