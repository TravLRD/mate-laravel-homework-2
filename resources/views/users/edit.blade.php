@extends('layouts.crud')

@section('content')
<div class="">
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Edit User</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Edit User</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">User Details</h3>
            </div>

            <form method="POST" action="{{ route('users.update', $user->id) }}">
              @csrf
              @method('PUT')

              <div class="card-body">
                <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" id="name" name="name" class="form-control" value="{{ $user->name }}">
                </div>

                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" id="email" name="email" class="form-control" value="{{ $user->email }}">
                </div>

                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" id="password" name="password" class="form-control">
                </div>

                <div class="form-group">
                  <label for="password_confirmation">Confirm Password</label>
                  <input type="password" id="password_confirmation" name="password_confirmation" class="form-control">
                </div>

                <div class="form-group clearfix">
                  <div class="icheck-primary d-inline">
                    <input type="checkbox" id="isAdmin" name="is_admin" value="1" {{ $user->is_admin ? 'checked' : '' }}>
                    <label for="isAdmin">
                      Admin
                    </label>
                  </div>
                </div>
              </div>


              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
@endsection