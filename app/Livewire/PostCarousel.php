<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;

class PostCarousel extends Component
{
    use WithPagination;

    public function render()
    {
        $posts = Post::paginate(3); // Atur jumlah post per halaman

        return view('livewire.post-carousel', ['posts' => $posts]);
    }
}

