<x-layout>
    <x-slot:judul>{{ $title }}</x-slot>

        {{-- <article class="py-8 max-w-screen-md">
                <h2 class="mb-1 text-3xl tracking-tight font-bold text-gray-900">{{ $post['title'] }}</h2>
            <div>
                <b>By</b>
                <a href="/authors/{{ $post->author->username }}" class="hover:underline">{{ $post->author->name }}</a>
                <b>In</b>
                <a href="/categories/{{ $post->category->slug }}" class="hover:underline text-base text-gray-500">{{ $post->category->name }}</a>
                |
                {{$post->created_at->diffForHumans()}}
            </div>
            <p class="my-4 text-light">
                {{ $post['body'] }}
            </p>
            <a href="/blog" class="font-medium text-blue-500 hover:underline">&laquo; Back to Blogs</a>
        </article> --}}

        {{-- css flowbite --}}

        <article class="mx-auto w-full max-w-2xl format format-sm sm:format-base lg:format-lg format-blue dark:format-invert">
            <header class="mb-4 lg:mb-6 not-format">
                <h1 class="font-serif mb-4 text-4xl font-extrabold leading-tight text-gray-900 lg:mb-6 lg:text-6xl dark:text-white text-center">{{ $post['title'] }}</h1>
                <div class="flex float-end mt-3">
                    <svg class="max-sm:w-3 md:w-4 lg:w-4 h-4 text-yellow-300 ms-1" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                        <path
                            d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
                    </svg>
                    <svg class="max-sm:w-3 md:w-4 lg:w-4 h-4 text-yellow-300 ms-1" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                        <path
                            d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
                    </svg>
                    <svg class="max-sm:w-3 md:w-4 lg:w-4 h-4 text-yellow-300 ms-1" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                        <path
                            d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
                    </svg>
                    <svg class="max-sm:w-3 md:w-4 lg:w-4 h-4 text-yellow-300 ms-1" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                        <path
                            d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
                    </svg>
                    <svg class="max-sm:w-3 md:w-4 lg:w-4 h-4 ms-1 text-gray-300 dark:text-gray-500" aria-hidden="true"
                        xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                        <path
                            d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
                    </svg>
                </div>
                <address class="flex items-center mb-6 not-italic">
                    <div class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white">
                        <img class="mr-4 w-16 h-16 rounded-full" src="{{ asset('storage/' . $post->author->foto_profil) }}" alt="Jese Leos">
                        <div>
                            <a href="/blog?author={{ $post->author->username }}" rel="author" class="text-xl font-bold text-gray-900 dark:text-white max-sm:text-base">{{ $post->author->name }}</a> <br>
                            <p class="text-base text-gray-500 dark:text-gray-400">
                                {{$post->created_at->diffForHumans()}}
                            </p>
                            <a href="/categories/{{ $post->category->slug }}">
                                <span
                                    class="bg-{{ $post->category->color }}-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                                    {{ $post->category->name }}
                                </span>
                            </a>
                        </div>
                    </div>
                </address>
            </header>
            <div class="flex justify-center">
                <img src="{{ asset('storage/' . $post->thumbnail) }}" alt="Gambar Thumbnail" class="w-full max-w-md h-auto rounded-lg shadow-md">
            </div>
                <br>
            <p class="mb-5 font-light text-gray-800 dark:text-gray-400 text-justify font-serif">
                {{ strip_tags($post['body']) }}
            </p>
            <a href="/blog" class="font-medium text-blue-500 hover:underline">&laquo; Back to Blogs</a>
        </article>
  
        {{-- end css flowbite --}}
</x-layout>
