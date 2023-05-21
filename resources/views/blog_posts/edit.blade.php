@extends('layouts.app')

@section('title', 'Edit Blog Post')

@section('content')
<div class="card">
  <div class="card-header">
    <h3 class="card-title">Edit Post</h3>
  </div>
  <!-- /.card-header -->
  <!-- form start -->
  <form role="form" action="{{ route('blog_posts.update', $blogPost->id) }}" method="POST">
    @csrf
    @method('PUT')
    <div class="card-body">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" id="title" name="title" value="{{ $blogPost->title }}" required>
      </div>
      <div class="form-group">
        <label for="content">Content</label>
        <textarea class="form-control" id="content" name="content" rows="3" required>{{ $blogPost->content }}</textarea>
      </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
      <button type="submit" class="btn btn-primary">Update</button>
    </div>
  </form>
</div>
<!-- /.card -->
@endsection