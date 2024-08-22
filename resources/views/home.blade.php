<x-layout>
    <x-slot:judul>{{$title}}</x-slot>
{{-- tailwind jumbotron --}}
<section id="home" class="md:pt-20 lg:pt-32 max-sm:pt-[40px] px-8">
        <div class="flex flex-wrap">
            <div class="w-full self-center px-4 lg:w-1/2 md:w-1/2">
                <h1 class="
                text-base font-semibold text-teal-500 md:text-xl lg:text-2xl
                ">Halo Semua, Saya <span class="block font-bold text-slate-900 text-4xl mt-1">
                    Anggi Saifudin    
                </span>
            </h1>
                <h2 class="font-medium text-slate-500 text-lg mb-5">Conten Creator | <span class="text-slate-900">Programming</span></h2>
                <p class="font-medium text-slate-400 mb-10 leading-relaxed">Belajar Web Programming menggunakan Tailwind CSS</p>

                <a href="" class="text-base font-semibold text-white bg-teal-500 py-3 px-8 rounded-full hover:shadow-lg hover:opacity-80 transition duration-300 ease-in-out">Hubungi Saya</a>
            </div>
            <div class="max-w-full self-end px-4 lg:w-1/2 md:w-1/2">
                <div class="mt-10 lg:mt-9 lg:right-0">
                    <img src="/img/3.png" alt="anggi" class="max-w-full mx-auto">
                </div>
            </div>
        </div>
        <div class="bg-gray-100 space-x-2 lg:mt-[150px] mt-[100px]">
            <h1 class="text-center font-bold text-4xl">Sosial Media</h1>
            <div class="flex">
            <div class="lg:w-1/2 mt-5 text-slate-900">
                <blockquote 
                class="
                font-serif text-xl italic text-gray-700 border-l-4 border-gray-300 pl-4 px-6 rounded-lg
                ">
                Di tengah hiruk-pikuk dunia digital, sosial media kami hadir sebagai tempat di mana inspirasi tak terbatas bertemu dengan cerita-cerita pribadi yang penuh makna. Kami percaya bahwa setiap individu memiliki kisah yang unik dan berharga untuk dibagikan, dan di sinilah tempatnya untuk saling bertukar cerita, menambah wawasan, dan menemukan ide-ide baru yang bisa mengubah perspektif Anda</blockquote>
            </div>
            <div class="lg:w-1/2 mt-5 text-gray-700
            ">
                <blockquote class="font-serif text-xl">Temukan Inspirasi, Berbagi Cerita, dan Bangun Koneksi!</blockquote>
                <div class="flex space-x-2">
                    <a href="#" class="mt-2 py-1">
                        <svg width="30" height="30" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/></svg></a>
                    <a href="#" class="mt-2 py-1">
                        <svg width="30" height="30" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M512 256C512 114.6 397.4 0 256 0S0 114.6 0 256C0 376 82.7 476.8 194.2 504.5V334.2H141.4V256h52.8V222.3c0-87.1 39.4-127.5 125-127.5c16.2 0 44.2 3.2 55.7 6.4V172c-6-.6-16.5-1-29.6-1c-42 0-58.2 15.9-58.2 57.2V256h83.6l-14.4 78.2H287V510.1C413.8 494.8 512 386.9 512 256h0z"/></svg>
                    </a>
                    <a href="#" class="mt-2 py-1">
                        <svg width="30" height="30" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M549.7 124.1c-6.3-23.7-24.8-42.3-48.3-48.6C458.8 64 288 64 288 64S117.2 64 74.6 75.5c-23.5 6.3-42 24.9-48.3 48.6-11.4 42.9-11.4 132.3-11.4 132.3s0 89.4 11.4 132.3c6.3 23.7 24.8 41.5 48.3 47.8C117.2 448 288 448 288 448s170.8 0 213.4-11.5c23.5-6.3 42-24.2 48.3-47.8 11.4-42.9 11.4-132.3 11.4-132.3s0-89.4-11.4-132.3zm-317.5 213.5V175.2l142.7 81.2-142.7 81.2z"/></svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
    {{-- ujicoba --}}
    <div class="text-center mt-10 mb-10">
        <h1 class="text-black font-bold text-4xl py-5">Categori Berita</h1>
        <div class="flex justify-center items-center mt-5">
            <button class="bg-gray-300 px-4 py-2 rounded-l" id="prevBtn">
                &#8592;
            </button>
            <div class="flex overflow-hidden justify-center items-center">
                <div id="carousel" class="flex transition-transform duration-300">
                    @foreach($posts as $post)
                        <h2 class="mr-10 font-serif lg:text-2xl md:text-2xl mt-5 sm:text-xs flex-none w-full">{{ $post->name }}</h2>
                    @endforeach
                </div>
            </div>
            <button class="bg-gray-300 px-4 py-2 rounded-r" id="nextBtn">
                &#8594;
            </button>
        </div>
        {{-- <div class="mt-5">
            {{ $posts->links() }}
        </div> --}}
    </div>
    {{-- end ujicoba --}}
</section>
{{-- end jumbotron --}}


<script>
    // script untuk slide categori
    document.addEventListener('DOMContentLoaded', function () {
        const carousel = document.getElementById('carousel');
        const items = carousel.children;
        const totalItems = items.length;
        const itemWidth = items[0].offsetWidth;
        let currentIndex = 0;

        document.getElementById('nextBtn').addEventListener('click', function () {
            if (currentIndex < totalItems - 1) {
                currentIndex++;
            } else {
                currentIndex = 0;
            }
            updateCarousel();
        });

        document.getElementById('prevBtn').addEventListener('click', function () {
            if (currentIndex > 0) {
                currentIndex--;
            } else {
                currentIndex = totalItems - 1;
            }
            updateCarousel();
        });

        function updateCarousel() {
            const offset = -currentIndex * itemWidth;
            carousel.style.transform = `translateX(${offset}px)`;
        }
    });

    // slide untuk foto profil
</script>

</x-layout>

