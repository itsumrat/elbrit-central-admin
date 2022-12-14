@extends('admin.layout')

@section('title', 'Update product')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Update Product</h1>
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
            <div class="col-12">
                <form action="{{ route('products.update', $product->id) }}" method="post" enctype="multipart/form-data">
                  @method('PATCH')
                    @csrf
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="productName" class="col-sm-3">Product Name</label>
                                <div class="col-sm-9">
                                  <input type="text" id="productName" name="product_name" value="{{$product->product_name}}" class="form-control">
                                </div>
                            </div>                            
                            <div class="form-group row">
                                <label for="inputProductUniueness" class="col-sm-3">Uniqueness of The Product</label>
                                <div class="col-sm-9">
                                  <input type="text" id="inputProductUniueness" name="product_uniqueness" value="{{$product->product_uniqueness}}" class="form-control">
                                </div>
                            </div>                                                                                    
                            <div class="form-group row">
                                <label for="inpuCarton" class="col-sm-3">Carton Image</label>
                              <div class="col-sm-9">
                                <input type="file" id="inpuCarton" name="carton_image" class="form-control">
                                </div>
                            </div>                                                                                                                
                            <div class="form-group row">
                                <label for="inpuStrip" class="col-sm-3">Strip Image</label>
                              <div class="col-sm-9">
                                <input type="file" id="inpuStrip" name="strip_image" class="form-control">
                                </div>
                            </div>                                                                                                                
                            <div class="form-group row">
                                <label for="inpuTablet" class="col-sm-3">Tablet Image</label>
                              <div class="col-sm-9">
                                <input type="file" id="inpuTablet" name="tablet_image" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inpuLogo" class="col-sm-3">Logo Image</label>
                              <div class="col-sm-9">
                                <input type="file" id="inpuLogo" name="logo_image" class="form-control">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputLabelClaim" class="col-sm-3">Label Claim</label>
                                <div class="col-sm-9">
                                  <textarea name="label_claim" id="inputLabelClaim" class="ckd form-control" cols="30" rows="10">{{$product->label_claim}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputToP" class="col-sm-3">Type of Product</label>
                              <div class="col-sm-9">
                                  <textarea name="top" id="inputToP" class="ckd form-control" cols="30" rows="10">{{$product->top}}</textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputTcp" class="col-sm-3">Target Customer Profile</label>
                              <div class="col-sm-9">
                                <textarea name="tcp" id="inputTcp" cols="30" rows="10" class="ckd form-control">{{$product->tcp}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputTargetDoctors" class="col-sm-3">Target Doctors</label>
                              <div class="col-sm-9">
                                <textarea name="target_doctors" id="inputTargetDoctors" class="ckd form-control" cols="30" rows="10">{{$product->target_doctors}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPatientsProfile" class="col-sm-3">Patients Profile</label>
                              <div class="col-sm-9">
                                <textarea name="patients_profile" class="ckd form-control" id="inputPatientsProfile" cols="30" rows="10">{{$product->patients_profile}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputCPA" class="col-sm-3">Customer Potential Analyser</label>
                              <div class="col-sm-9">
                                <textarea name="" id="inputCPA" cols="30" rows="10" class="ckd form-control">{{$product->cpa}}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputOthers" class="col-sm-3">Others</label>
                              <div class="col-sm-9">
                                <textarea name="others" class="ckd form-control" id="inputOthers" cols="30" rows="10">{{$product->others}}</textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputTeam" class="col-sm-3">Share With Team</label>
                              <div class="col-sm-9">
                                <select id="inputTeam" name="team_ids[]" class="form-control select2" multiple="" data-placeholder="Select Team">
                                    @foreach ($teams as $team)
                                      <option value="{{$team->id}}" @foreach($product->teams as $ex_team){{$ex_team->pivot->team_id == $team->id ? 'selected': ''}} @endforeach >{{$team->name}}</option>
                                    @endforeach
                                </select>
                              </div>
                            </div>
                        </div>
                        <div style="padding:15px;">                                
                            <input type="submit" value="Update" class="btn btn-primary float-right" style="width:180px">    
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
      // $('#inputLogo').change(function(){                
      //     let reader = new FileReader();
      //     reader.onload = (e) => { 
      //         $('#preview-logo').attr('src', e.target.result); 
      //     }
      //     reader.readAsDataURL(this.files[0]);         
      // });
      $(document).ready(function() {
          $('.select2').select2();
      });

      
        $(".ckd").each(function () {
          let id = $(this).attr('id');
            CKEDITOR.replace(id, {
              toolbar: [
                ['Cut', 'Copy','Paste','PasteText','PasteFromWord','-','Textarea','Undo','Redo','-','Bold', 'Italic', 'Underline', 'Strike', 'TextColor', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink','Indent','Outdent','Blockquote','Styles','Format']
              ]
            });
      });
  </script>
@endsection