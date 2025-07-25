@extends('layouts.app')

@section('title', 'Home - Kubik')

@section('content')

    @include('sections.hero-home')

    @include('sections.about-home')

    @include('sections.projects')

    @include('sections.services')

    @include('sections.testimonials-home')

    @include('sections.service-cta-home')

    @include('sections.team-home')

    @include('sections.wework-home')

    @include('sections.form-cta')


@endsection
