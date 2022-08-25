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
            <h1 class="m-0">Employee List</h1>
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
      <table id="empListTable" class="table table-hover dataTable dtr-inline" aria-describedby="example2_info">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Email</th>
              <th>Mobile Number</th>
              <th>Team</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($employees as $i => $employee)
              <tr style="background-color:#fff">
                <td>{{$i+1}}</td>
                <td>{{$employee->name}}</td>
                <td>{{$employee->email}}</td>
                <td>{{$employee->mobile_no}}</td>
                <td>{{$employee->team->name}}</td>
                <td>
                  <li class="list-inline-item">
                    <a href="{{route('employees.edit', $employee->id)}}" class="btn btn-sm" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                </li>
                <li class="list-inline-item">
                  <form method="post" action="{{route('employees.destroy',$employee->id)}}">
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
            $('#empListTable').DataTable();
        } );

    </script>
@endsection