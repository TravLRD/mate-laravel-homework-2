@extends('layouts.blog_posts')

@section('title', 'View Blog Post')

@section('content_header')
<h1>View Blog Post</h1>
@stop

@section('content')
<div class="card">
  <div class="card-header">
    <h3 class="card-title">{{ $blogPost->title }}</h3>
    <div class="card-tools">
      <small>Posted by: {{ $blogPost->user->name }}</small>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <p>{{ $blogPost->content }}</p>
  </div>
  <!-- /.card-body -->
  <div class="card-footer">
    <a href="{{ route('blog_posts.index') }}" class="btn btn-default">Back</a>
  </div>
  <!-- /.card-footer -->
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