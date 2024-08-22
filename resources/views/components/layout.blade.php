<!DOCTYPE html>
{{-- <html lang="en"> --}}
<html lang="en" class="h-full w-full bg-gray-100">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Halaman {{ $judul }}</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;500;700&display=swap" rel="stylesheet">
    <livewire:styles />
    <livewire:scripts />
</head>

{{-- <body class="h-full w-full">
    <div class="min-h-full"> --}}

<body class="min-h-screen w-full bg-white">
    <div class="min-h-full w-full">
        <x-navbar></x-navbar>
        <x-header>{{ $judul }}</x-header>

        <main class="w-full">
            <div class="w-full">
                {{-- <div class="mx-auto"> --}}
                {{ $slot }}
            </div>
        </main>
    </div>

    {{-- akhir template dari tailwin css --}}

    <x-footer></x-footer>
</body>

</html>
