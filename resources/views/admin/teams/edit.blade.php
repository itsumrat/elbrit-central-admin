@extends('admin.layout')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Edit Team</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                        <li class="breadcrumb-item active">Edit Team</li>
                    </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    @if(count($errors) > 0)
    <div class="row">
        <div class="col-md-8 offset-2">            
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>
        </div>
    </div>
    @endif

    <div class="content"> 
        <div class="row">
            <div class="col-6 offset-3">
                <form action="{{ route('teams.update', $team->id) }}" method="post">
                    @csrf
                    @method('PATCH')
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Edit Team</h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputName">Team Name</label>
                                <input type="text" id="inputName" name="name" value="{{$team->name}}" class="form-control">
                            </div>                            
                        </div>
                        <div style="padding:15px;">                                
                            <a href="#" class="btn btn-secondary">Cancel</a>
                            <input type="submit" value="Update Team" class="btn btn-success float-right">    
                        </div>                
                    </div>            
                </form>
            </div>
        </div>
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection