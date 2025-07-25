<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/svg" href="{{ asset('assets/img/favicon.ico') }}">
    <title>@yield('title', config('app.name', 'Kubik'))</title>
    {!! SEO::generate() !!}

    <link href="{{ asset('dist/assets/app-97de3ed1.css') }}" rel="stylesheet">
    <link href="{{ asset('dist/assets/app-afc193cb.css') }}" rel="stylesheet">

    <link href="https://fonts.cdnfonts.com/css/helvetica-neue-5" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('build/assets/app-DHTTEZyo.css') }}">
    <link rel="stylesheet" href="{{ asset('build/assets/app-8MreAzjN.css') }}">


    <script type="module" src="{{ asset('dist/assets/app-8_ob876P.js') }}"></script>
    <script type="module" src="{{ asset('build/assets/photoswipe.esm-D2Nf-uDI.js') }}"></script>


    <style>
        body {
            font-family: 'Helvetica Neue', sans-serif;

        }
    </style>

    @vite(['resources/css/app.css', 'resources/js/app.js'])

    @yield('style')

</head>

<body class="antialiased text-gray-900 bg-black">

    @include('components.loader')

    <div id="smooth-wrapper">
        <div id="smooth-content">

            @include('layouts.header.main')

            <main class="-mt-[100px]">
                @yield('content')
            </main>

            @include('layouts.footer.main')

        </div>
    </div>

    @yield('script')
    @stack('scripts')

    <script>
        function gsapMenu() {
            return {
                open: false,
                tl: null,
                init() {
                    this.$nextTick(() => {
                        const menu = this.$refs.menu;
                        if (!menu) return;

                        const links = menu.querySelectorAll('ul.main-menu li');

                        this.tl = window.gsap.timeline({
                                paused: true
                            })
                            .to(menu, {
                                duration: 1,
                                opacity: 1,
                                height: '60vh',
                                ease: 'expo.inOut'
                            })
                            .from(links, {
                                duration: 1,
                                opacity: 0,
                                y: 20,
                                stagger: 0.1,
                                ease: 'expo.inOut'
                            }, "-=0.5");

                        this.tl.reverse();
                    });
                },
                toggleMenu() {
                    if (!this.tl) return;
                    this.open = !this.open;
                    this.tl.reversed(!this.open);
                },
                closeMenu() {
                    if (!this.tl) return;
                    this.open = false;
                    this.tl.reverse();
                }
            };
        }
    </script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": true,
                "positionClass": "toast-top-right",
                "preventDuplicates": true,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            };

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            @if (session('success'))
                toastr.success('{{ session('success') }}');
            @endif

            @if (session('error'))
                toastr.error('{{ session('error') }}');
            @endif

            $(document).ready(function() {
                $('.counter-input').each(function() {
                    let productId = $(this).attr('id').split('_')[
                        1];
                    let maxQuantity = parseInt($('.increment-button[data-id="' + productId + '"]')
                        .data('max-quantity')) || Infinity;
                    updateButtonState(productId, maxQuantity);
                });
            });

            $('#newsletter-form').on('submit', function(e) {
                e.preventDefault();

                let newsletter_email = $('#newsletter_email').val();
                let _token = $('input[name="_token"]').val();

                $.ajax({
                    url: "{{ route('newsletter.subscribe') }}",
                    type: "POST",
                    data: {
                        newsletter_email: newsletter_email,
                        _token: _token
                    },
                    success: function(response) {
                        $('#messageNewsletter').text(response.success).css('color', '#00dc00');
                        $('#newsletter_email').val('');
                    },
                    error: function(xhr) {
                        let error = xhr.responseJSON.errors.newsletter_email[0];
                        $('#messageNewsletter').text(error).css('color', 'red');
                    }
                });
            });

        });
    </script>
    <script>
        const menuButton = document.getElementById('menu-button');
        const drawerMenu = document.getElementById('drawer-menu');
        const drawerOverlay = document.getElementById('drawer-overlay');
        const closeMenuButton = document.getElementById('close-menu');

        // Open menu
        menuButton.addEventListener('click', () => {
            drawerMenu.classList.add('open');
            drawerOverlay.classList.remove('hidden');
        });

        // Close menu
        closeMenuButton.addEventListener('click', () => {
            drawerMenu.classList.remove('open');
            drawerOverlay.classList.add('hidden');
        });

        // Close menu when overlay is clicked
        drawerOverlay.addEventListener('click', () => {
            drawerMenu.classList.remove('open');
            drawerOverlay.classList.add('hidden');
        });
    </script>
</body>

</html>
