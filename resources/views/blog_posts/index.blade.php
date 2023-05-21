@extends('layouts.blog_posts')

@section('title', 'Blog Posts')

@section('content_header')
<h1>Blog Posts</h1>
@stop

@section('content')
<div class="card">
  <div class="card-header">
    <h3 class="card-title">Blog Posts List</h3>
    <div class="card-tools">
      @if(Auth::check())
      <a href="{{ route('blog_posts.create') }}" class="btn btn-primary">
        <i class="fas fa-plus"></i> New Post
      </a>
      @endif
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body table-responsive p-0">
    <table class="table table-hover text-nowrap">
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Author</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        @foreach($posts as $post)
        <tr>
          <td>{{ $post->id }}</td>
          <td>{{ $post->title }}</td>
          <td>{{ $post->user->name }}</td>
          <td>
            <a href="{{ route('blog_posts.show', $post->id) }}" class="btn btn-sm btn-success">Show</a>
            @if(Auth::check() && Auth::user()->can('update', $post) || Auth::user()->can('delete', $post))
            <a href="{{ route('blog_posts.edit', $post->id) }}" class="btn btn-sm btn-warning">Edit</a>
            <form method="POST" action="{{ route('blog_posts.destroy', $post->id) }}" style="display: inline-block;">
              @csrf
              @method('DELETE')
              <button type="submit" class="btn btn-sm btn-danger">Delete</button>
            </form>
            @endif
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
  <!-- /.card-body -->
</div>
<!-- /.card -->
@stop

@section('css')
<link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script>
  console.log('Hi!');
</script>
@stop