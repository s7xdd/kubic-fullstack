@extends('layouts.app')

@section('content')
    <section class="relative min-h-screen bg-black text-white flex items-center justify-center overflow-hidden px-4">

        <div class="absolute inset-0 z-0 overflow-hidden">
            <div class="absolute w-full h-full bg-black/80 backdrop-blur-sm z-10"></div>
            @for ($row = 0; $row < 6; $row++)
                @php $rowId = 'row-' . $row; @endphp
                <div id="{{ $rowId }}" class="absolute flex gap-4 z-0 min-w-[6000px] h-[160px] left-0"
                    style="top: {{ 20 + $row * 160 }}px;">
                    @for ($n = 0; $n < 2; $n++)
                        @for ($i = 1; $i <= 10; $i++)
                            <img src="{{ asset('images/projects/project-' . $i . '.jpg') }}" alt="bg-img-{{ $i }}"
                                class="w-[200px] h-[160px] object-cover rounded-lg opacity-20 grayscale hover:opacity-40 transition duration-500" />
                        @endfor
                    @endfor
                </div>
            @endfor
        </div>

        <div x-data="{ tab: 'login', show: false }"
            class="relative z-20 bg-zinc-900/50 backdrop-blur-sm shadow-2xl p-8 w-full max-w-xl transition-all rounded-lg">

            <div class="flex border-b border-gray-800 mb-8">
                <button
                    :class="tab === 'login' ? 'border-white text-white' : 'border-transparent text-gray-500 hover:text-white'"
                    @click="tab = 'login'"
                    class="flex-1 text-center py-2 border-b-2 font-medium uppercase tracking-wide transition-all">
                    Enter Password
                </button>
                <button
                    :class="tab === 'request' ? 'border-white text-white' : 'border-transparent text-gray-500 hover:text-white'"
                    @click="tab = 'request'"
                    class="flex-1 text-center py-2 border-b-2 font-medium uppercase tracking-wide transition-all">
                    Request Access
                </button>
            </div>

            <div x-show="tab === 'login'" x-cloak>
                <h2 class="text-xl font-semibold mb-4">🔐 Protected Projects</h2>
                <p class="text-sm text-gray-400 mb-6">Enter your email and password to continue.</p>

                @if ($errors->has('email') || $errors->has('password'))
                    <div class="bg-red-600/10 border border-red-500 text-red-400 px-4 py-2 rounded mb-5 text-sm">
                        <strong>Login failed.</strong> Please check your credentials and try again.
                    </div>
                @endif

                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="mb-6">
                        <label for="email" class="block text-sm text-gray-300 mb-1">Email</label>
                        <input type="email" name="email" id="email"
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white"
                            placeholder="you@example.com" value="{{ old('email') }}" required>
                    </div>
                    <div class="mb-6 relative">
                        <label for="password" class="block text-sm text-gray-300 mb-1">Password</label>
                        <input :type="show ? 'text' : 'password'" id="password" name="password"
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white pr-12"
                            required>
                        <button type="button" @click="show = !show"
                            class="absolute right-3 top-9 text-gray-400 hover:text-white" title="Toggle password">
                            <svg x-show="!show" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542
                                          7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>
                            <svg x-show="show" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.542-7a9.978
                                          9.978 0 012.413-4.376M9.88 9.88a3 3 0 104.24 4.24" />
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3l18 18" />
                            </svg>
                        </button>
                    </div>

                    <button type="submit"
                        class="w-full bg-white text-black font-semibold py-2 rounded-md hover:bg-gray-200 transition">
                        Login
                    </button>
                </form>
            </div>

            <div x-show="tab === 'request'" x-cloak>
                <h2 class="text-xl font-semibold mb-4">📩 Request Access</h2>
                <p class="text-sm text-gray-400 mb-6">We’ll send the password to your email address if authorized.</p>

                @if (session('success'))
                    <div class="bg-green-600/10 border border-green-500 text-green-400 px-4 py-2 rounded mb-4 text-sm">
                        {{ session('success') }}
                    </div>
                @endif

                @if ($errors->any())
                    <div class="bg-red-600/10 border border-red-500 text-red-400 px-4 py-2 rounded mb-4 text-sm">
                        <ul class="list-disc list-inside space-y-1">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form method="POST" action="{{ route('access.submit') }}" class="space-y-4">
                    @csrf

                    <div>
                        <label for="name" class="block text-sm text-gray-300 mb-1">Name</label>
                        <input type="text" name="name" id="name" placeholder="Your full name"
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white"
                            required>
                    </div>

                    <div>
                        <label for="email" class="block text-sm text-gray-300 mb-1">Email</label>
                        <input type="email" name="email" id="email" placeholder="you@example.com"
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white"
                            required>
                    </div>

                    <div>
                        <label for="phone" class="block text-sm text-gray-300 mb-1">Phone</label>
                        <input type="text" name="phone" id="phone" placeholder="+971 55 555 5555"
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white"
                            required>
                    </div>

                    <div>
                        <label for="message" class="block text-sm text-gray-300 mb-1">Message</label>
                        <textarea name="message" id="message" rows="4" placeholder="Tell us why you need access..."
                            class="w-full bg-black border border-gray-700 text-white px-4 py-2 rounded-md focus:ring-2 focus:ring-white"
                            required></textarea>
                    </div>

                    <button type="submit"
                        class="w-full bg-white text-black font-semibold py-2 rounded-md hover:bg-gray-200 transition">
                        Request Access
                    </button>
                </form>
            </div>

        </div>
    </section>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            for (let i = 0; i < 6; i++) {
                const direction = i % 2 === 0 ? '-=6000' : '+=6000';
                gsap.to(`#row-${i}`, {
                    x: direction,
                    ease: "linear",
                    repeat: -1,
                    duration: i % 2 === 0 ? 90 : 110,
                });
            }
        });
    </script>
@endsection
