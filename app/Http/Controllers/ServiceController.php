<?php

namespace App\Http\Controllers;
use App\Models\Post;
use Illuminate\View\View;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\RedirectResponse;

//import Facade "Storage"
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class ServiceController extends Controller
{
    //


    /**
     * index
     *
     * @return View
     */
    public function index1(): View
    {
        //get posts
        $blogs = blog::latest()->paginate(5);

        //render view with posts
        return view('blogs.index1', compact('blogs'));

    }

    
    /**
     * service
     *
     * @return View
     */
    public function service(): View
    {
        //get posts
        $posts = Post::latest()->paginate(6);

        //render view with posts
        return view('blogs.service', compact('blogs'));

    }


    /**
     * index
     *
     * @return View
     */
    public function create1(): View
    {
        return view('posts.create');
    }
    public function footer(): View
    {
        return view('shared.footer');
    }

    /**
     * store
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $this->validate($request, [
            'image'     => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'title'     => 'required|min:5',
            'content'   => 'required|min:10'
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts', $image->hashName());

        //create post
        Blog::create1([
            'image'     => $image->hashName(),
            'title'     => $request->title,
            'content'   => $request->content
        ]);

        //redirect to index
        return redirect()->route('posts.index1')->with(['success' => 'Data Berhasil Disimpan!']);
    }
    
    /**
     * show
     *
     * @param  mixed $id
     * @return View
     */
    public function show1(string $id): View
    {
        //get post by ID
        $Blog = blog::findOrFail($id);

        //render view with post
        return view('posts.show1', compact('post'));
    }
  
    /**
     * edit
     *
     * @param  mixed $id
     * @return View
     */
    public function edit(string $id): View
    {
        //get post by ID
        $Blog = blog::findOrFail($id);

        //render view with post
        return view('posts.edit', compact('blog'));
    }



    
    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return RedirectResponse
     */
    public function update(Request $request, $id): RedirectResponse
    {
        //validate form
        $this->validate($request, [
            'image'     => 'image|mimes:jpeg,jpg,png|max:2048',
            'title'     => 'required|min:5',
            'content'   => 'required|min:10'
        ]);

        //get post by ID
        $Blog = blog::findOrFail($id);

        //check if image is uploaded
        if ($request->hasFile('image')) {

            //upload new image
            $image = $request->file('image');
            $image->storeAs('public/blogs', $image->hashName());

            //delete old image
            Storage::delete('public/blogs/'.$Bolg->image);

            //update post with new image
            $Blog->update([
                'image'     => $image->hashName(),
                'title'     => $request->title,
                'content'   => $request->content
            ]);

        } else {

            //update post without image
            $Blog->update([
                'title'     => $request->title,
                'content'   => $request->content
            ]);
        }

        //redirect to index
        return redirect()->route('posts.index1')->with(['success' => 'Data Berhasil Diubah!']);
    }





     /**
     * destroy
     *
     * @param  mixed $blog
     * @return void
     */
    public function destroy($id): RedirectResponse
    {
        //get post by ID
        $Bolg = blog::findOrFail($id);

        //delete image
        Storage::delete('public/posts/'. $blog->image);

        //delete post
        $Bolg->delete();

        //redirect to index
        return redirect()->route('posts.index1')->with(['success' => 'Data Berhasil Dihapus!']);
    }
    public function search (Request $request)
    {
        $search = $request->search;
        $posts = DB::table('blogs')
        ->where('title', 'like', "%".$search."%")
        ->paginate();
        return view('tampil', compact('blogs'));

    }


}