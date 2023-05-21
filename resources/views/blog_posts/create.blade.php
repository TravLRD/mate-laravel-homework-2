@extends('layouts.crud')

@section('title', 'Create Blog Post')

@section('content_header')
<h1>Create Blog Post</h1>
@stop

@section('content')
<div class="card">
  <div class="card-header">
    <h3 class="card-title">Enter Post Details</h3>
  </div>
  <!-- /.card-header -->
  <!-- form start -->
  <form role="form" action="{{ route('blog_posts.store') }}" method="POST">
    @csrf
    <div class="card-body">
      <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="Enter title" required>
      </div>
      <div class="form-group">
        <label for="content">Content</label>
        <textarea class="form-control" id="content" name="content" rows="3" placeholder="Enter content ..." required></textarea>
      </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
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