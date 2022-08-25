@extends('admin.layout')

@section('title', 'Users')

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Teams</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <div class="content">
      <table id="teamsTable" class="table table-hover dataTable dtr-inline" aria-describedby="example2_info">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($teams as $i => $team)
              <tr style="background-color: #fff;">
                <td>{{$i+1}}</td>
                <td>{{$team->name}}</td>
                <td>
                  <li class="list-inline-item">
                    <a href="{{route('teams.edit', $team->id)}}" class="btn btn-sm" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                </li>
                <li class="list-inline-item">
                  <form method="post" action="{{route('teams.destroy',$team->id)}}">
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
            $('#teamsTable').DataTable();
        } );

    </script>
@endsection