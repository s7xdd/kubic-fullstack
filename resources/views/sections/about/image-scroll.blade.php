<section class="relative bg-black overflow-hidden py-12 border-b border-gray-800">
    <x-container class="w-full overflow-x-hidden px-0">
        <div id="scrollGallery" class="flex space-x-6 w-max will-change-transform">
            @foreach (array_map('intval', explode(',', $page->heading10)) as $id)
                <img src="{{ uploaded_asset($id) }}" alt="Kubik Office Image"
                    class="h-80 w-auto object-cover rounded-lg shadow-lg shrink-0" />
            @endforeach
        </div>
    </x-container>
</section>
