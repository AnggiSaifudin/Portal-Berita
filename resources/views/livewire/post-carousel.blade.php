<div class="text-center mt-5">
    <h1 class="text-black font-bold text-4xl">Categori Berita</h1>
    <div class="flex justify-center items-center">
        <div class="flex overflow-hidden">
            @foreach($posts as $post)
                <h2 class="mr-10 font-serif lg:text-2xl md:text-2xl mt-5 sm:text-xs">{{ $post->name }}</h2>
            @endforeach
        </div>
    </div>
    <div class="mt-5">
        {{ $posts->links() }} <!-- Pagination dengan Livewire -->
    </div>
</div>
