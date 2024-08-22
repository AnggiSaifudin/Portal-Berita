
<?php

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return view('welcome');
// });



Route::get('/', function () {
    // $caetegories = Category::latest()->paginate(2);
        $caetegories = Category::all();
        $users = User::all();
    return view('home', [
        'title' => 'Home Page',
        'posts' => $caetegories,
        'users' => $users
    ]);
});

Route::get('/about', function () {
    return view('about', ['title' => 'About Page']);
});

Route::get('/blog', function () {

    $posts = Post::latest();
    if(request('search')){
        $posts->where('title', 'like', '%'. request('search'). '%');
    }
    // $posts = Post::latest()->get();
    return view('blog', [
        'title' => 'Blog Page',
        'posts' => Post::filter(request(['search','category','author']))->latest()->paginate(5)->withQueryString()
    ]);
});

Route::get('/blog/{post:slug}', function (Post $post) {
    

return view ('post', ['title' => 'Single Post', 'post'=> $post]);

});

Route::get('/contact', function () {
    return view('contact', ['title' => 'Contact Page']);
});
Route::get('/portfolio', function () {
    return view('portfolio', ['title' => 'Portfolio Page']);
});
Route::get('/login', function () {
    return view('login', ['title' => 'Login']);
});

Route::get('/authors/{user:username}', function (User $user) {

    // $posts =$user->posts->load('category', 'author');
    $posts = $user->posts()->latest()->paginate(5);
    return view (
        'blog', 
    [
    'title' => count($posts).' Articles By '. $user->name, 
    'posts'=> $posts,
    // User::latest()->paginate(5)
]);
    
    });

    Route::get('/categories/{category:slug}', function (Category $category) {
        $posts = $category->posts()->latest()->paginate(5);
        return view (
            'blog', 
        [
        'title' => ' Articles In : '. $category->name, 
        'posts'=> $posts,
    ]);
        
        });



