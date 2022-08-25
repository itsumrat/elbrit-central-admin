@extends('admin.layout')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Add New Price</h1>
            </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    @if(count($errors) > 0)
    <div class="row">
        <div class="col-md-8">            
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
            <div class="col-8">
                <form action="{{ route('prices.store') }}" method="post">
                    @csrf
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="brandName" class="col-sm-3">Brand Name</label>
                              <div class="col-sm-9">
                                <input type="text" id="brandName" name="brand_name" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="productName" class="col-sm-3">Product Name</label>
                              <div class="col-sm-9">
                                <input type="text" id="productName" name="product_name" class="form-control">
                                </div>
                            </div>                            
                            <div class="form-group row">
                                <label for="inputPack" class="col-sm-3">Pack</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputPack" name="pack" class="form-control">
                                </div>
                            </div>                            
                            <div class="form-group row">
                                <label for="inputMRP" class="col-sm-3">MRP</label>
                              <div class="col-sm-9">
                                <input type="number" id="inputMRP" name="mrp" class="form-control" step="0.01">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPTR" class="col-sm-3">PTR</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputPTR" name="ptr" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPTS" class="col-sm-3">PTS</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputPTS" name="pts" class="form-control">
                              </div>
                            </div>                            
                            <div class="form-group row">
                              <label for="inputTeam" class="col-sm-3">Share With Team</label>
                              <div class="col-sm-9">
                                <select id="inputTeam" name="team_ids[]" class="form-control select2" multiple="" data-placeholder="Select Team">
                                    @foreach ($teams as $team)
                                      <option value="{{$team->id}}">{{$team->name}}</option>
                                    @endforeach
                                </select>
                              </div>
                            </div>
                        </div>
                        <div style="padding:15px;">                                
                            <input type="submit" value="Save" class="btn btn-primary float-right" style="width:180px">    
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

@section('scripts')

  <script>
     
      $(document).ready(function() {
          $('.select2').select2();
      });

  </script>
@endsection