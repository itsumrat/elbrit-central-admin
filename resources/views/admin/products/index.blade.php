@extends('admin.layout')

@section('title', 'Products')

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Products</h1>
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
      <table id="productsTable" class="table table-hover dataTable dtr-inline" aria-describedby="example2_info">
          <thead>
            <tr>
              <th>#</th>
              <th>Product Name</th>
              <th>Uniqueness of the Product</th>
              <th>Carton Image</th>
              <th>Strip Image</th>
              <th>Tablet Image</th>
              <th>Logo Image</th>
              <th>Team</th>
              <th>Label Claim</th>
              <th>Type Of Product</th>
              <th>Target Customer Profile</th>
              <th>Target Doctors</th>
              <th>Patients Profile</th>
              <th>Customer Potential Analyser</th>
              <th>Others</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($products as $k => $product)
              <tr style="background-color:#fff">
                <td>{{$k + 1}}</td>
                <td>{{$product->product_name}}</td>
                <td>{{$product->product_uniqueness}}</td>                
                <td>
                    <img src="/uploads/carton/{{$product->carton_image}}" alt="" width="60px;">
                </td>
                <td>
                  <img src="/uploads/strip/{{$product->strip_image}}" alt="" width="60px;">
                </td>
                <td>
                    <img src="/uploads/tablet/{{$product->tablet_image}}" alt="" width="60px;">
                </td>
                <td>
                    <img src="/uploads/logo/{{$product->logo_image}}" alt="" width="60px;">
                </td>

                <td>
                  @foreach ($product->teams as $team)
                    <span class="badge badge-info">{{$team->name}}</span>
                  @endforeach
                </td>
                <td>{{$product->label_claim}}</td>                
                <td>{{$product->top}}</td>
                <td>{{$product->tcp}}</td>                
                <td>{{$product->target_doctors}}</td>
                <td>{{$product->patients_profile}}</td>                
                <td>{{$product->cpa}}</td>
                <td>{{$product->others}}</td>
                <td>
                  <li class="list-inline-item">
                    <a href="{{route('products.edit', $product->id)}}" class="btn btn-sm" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                </li>
                <li class="list-inline-item">
                  <form method="post" action="{{route('products.destroy', $product->id)}}">
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
            $('#productsTable').DataTable({
              scrollX: true,
            });
        } );

    </script>
@endsection