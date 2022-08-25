@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
          <img src="/dist/img/logo.png" style="width: 125px; top: 13%; position: relative; display: block; margin: 0 auto;">
            <div class="card" style="top:20%">
                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <p>Sign in to Elbrit Central</p>
                            </div>
                        </div>
                        <div class="row mb-3">                            
                          <div class="col-md-12">
                            <div class="input-group">
                            <div class="input-group-prepend">
                              <div class="input-group-text"><i class="fa-solid fa-envelope"></i></div>
                            </div>
                              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email" required autocomplete="email" autofocus>
                            </div>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror    
                          </div>
                        </div>

                        <div class="row mb-3">
                          <div class="col-md-12">
                            <div class="input-group">
                              <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa-solid fa-unlock"></i></div>
                              </div>
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" required autocomplete="current-password">
                            </div>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                          </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" style="width:100%">
                                    {{ __('Sign in') }}
                                </button>                                
                            </div>
                        </div>
                        <div class="row mb-0 d-none">
                            <div class="col-md-12">
                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
