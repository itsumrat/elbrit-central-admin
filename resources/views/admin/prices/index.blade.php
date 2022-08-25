@extends('admin.layout')

@section('title', 'Price List')

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Price List</h1>
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
      <table id="pricesTable" class="table table-hover dataTable dtr-inline" aria-describedby="example2_info">
          <thead>
            <tr>
              <th>#</th>
              <th>Brand Name</th>
              <th>Product Name</th>
              <th>Team</th>
              <th>Pack</th>
              <th>MRP</th>
              <th>PTR</th>
              <th>PTS</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($prices as $k => $price)
              <tr style="background-color:#fff">
                <td>{{$k + 1}}</td>
                <td>{{$price->brand_name}}</td>
                <td>{{$price->product_name}}</td>
                <td>
                  @foreach ($price->teams as $team)
                    <span class="badge badge-info">{{$team->name}}</span>
                  @endforeach
                </td>
                <td>{{$price->pack}}</td>
                <td>{{$price->mrp}}</td>
                <td>{{$price->ptr}}</td>
                <td>{{$price->pts}}</td>
                <td>
                  <li class="list-inline-item">
                    <a href="{{route('prices.edit', $price->id)}}" class="btn btn-sm" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                </li>
                <li class="list-inline-item">
                  <form method="post" action="{{route('prices.destroy', $price->id)}}">
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
            $('#pricesTable').DataTable();
        } );

    </script>
@endsection