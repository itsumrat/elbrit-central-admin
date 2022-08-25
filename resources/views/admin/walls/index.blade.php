@extends('admin.layout')

@section('title', 'Post List')

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Post List</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">              
              <li><a class="btn btn-primary" href="{{route('posts.create')}}">Add New Post</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    @if(session()->has('success'))
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success">
                {{ session()->get('success') }}
            </div>
        </div>
    </div>
    @endif

    <div class="content">
      <table id="wallsTable" class="table table-hover dataTable dtr-inline" aria-describedby="example2_info">
          <thead>
            <tr>
              <th>#</th>
              <th>Details</th>
              <th>Image</th>
              <th>Video</th>
              <th>Employee Code</th>
              <th>Team</th>
              <th>Published At</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($posts as $k => $post)
              <tr style="background-color:#fff">
                <td>{{$k+1}}</td>
                <td>{{$post->details}}</td>
                <td>
                  @foreach ($post->image as $image)
                    <img width="60" src="/uploads/{{$image}}" alt="">                    
                  @endforeach
                </td>
                <td>{{$post->video}}</td>
                <td>
                  @foreach ($post->employees as $employee)
                    <span class="badge badge-info">{{$employee->employee_code}}</span>
                  @endforeach
                </td>
                <td>
                  @foreach ($post->teams as $team)
                    <span class="badge badge-info">{{$team->name}}</span>
                  @endforeach
                </td>
                <td>
                  {{$post->published_at}}
                </td>
                <td>
                  <li class="list-inline-item">
                    <a href="{{route('posts.edit', $post->id)}}" class="btn btn-sm" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                </li>
                <li class="list-inline-item">
                  <form method="post" action="{{route('posts.destroy', $post->id)}}">
                    @method('delete')
                    @csrf
                      <button class="btn btn-sm" type="submit" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
                  </form>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
    </div>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection

@section('scripts')
    <script>
        $(document).ready( function () {
            $('#wallsTable').DataTable();
        } );

    </script>
@endsection