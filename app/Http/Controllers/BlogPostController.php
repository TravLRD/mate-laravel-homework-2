<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class BlogPostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = BlogPost::all();
        return view('blog_posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog_posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
        ]);

        $blogPost = new BlogPost([
            'title' => $request->get('title'),
            'content' => $request->get('content'),
        ]);

        auth()->user()->blogPosts()->save($blogPost);

        return redirect('/blog_posts')->with('success', 'BlogPost created!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {
        return view('blog_posts.show', compact('blogPost'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogPost $blogPost)
    {
        if (Gate::denies('update', $blogPost)) {
            return redirect(route('blog_posts.index'))->with('error', "You can't edit this post!");
        }

        return view('blog_posts.edit', compact('blogPost'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BlogPost $blogPost)
    {
        $this->authorize('update', $blogPost);

        $request->validate([
            'title' => 'required',
            'content' => 'required',
        ]);

        $blogPost->update($request->only('title', 'content'));

        return redirect()->route('blog_posts.index')
            ->with('success', 'Blog post updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        $this->authorize('delete', $blogPost);

        $blogPost->delete();

        return redirect()->route('blog_posts.index')
            ->with('success', 'Blog post deleted successfully');
    }
}
