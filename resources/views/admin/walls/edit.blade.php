@extends('admin.layout')

@section('title', 'Update post')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Update Post</h1>
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
                <form action="{{ route('posts.update', $post->id) }}" method="post" enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="inputDetails" class="col-sm-3">Details</label>
                              <div class="col-sm-9">
                                <textarea class="form-control" name="details">{{ $post->details }}</textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmployee" class="col-sm-3">Share With Employee</label>
                              <div class="col-sm-9">
                                <select id="inputEmployee" name="employee_ids[]" class="form-control select2" multiple="" data-placeholder="Select Employee">
                                  @foreach ($employees as $employee)                                    
                                    <option value="{{$employee->id}}" @foreach($post->employees as $ex_employee){{$ex_employee->pivot->employee_id == $employee->id ? 'selected': ''}} @endforeach >{{$employee->name}}</option>                                   
                                  @endforeach
                                </select>
                              </div>
                            </div>                            
                            <div class="form-group row">
                                <label for="inputTeam" class="col-sm-3">Share With Team</label>
                              <div class="col-sm-9">
                                <select id="inputTeam" name="team_ids[]" class="form-control select2" multiple="" data-placeholder="Select Team">
                                    @foreach ($teams as $team)
                                      <option value="{{$team->id}}" @foreach($post->teams as $ex_team){{$ex_team->pivot->team_id == $team->id ? 'selected': ''}} @endforeach >{{$team->name}}</option>
                                    @endforeach
                                </select>
                              </div>
                            </div>                                                                                                                
                            <div class="form-group row">
                                <label for="inputPinPost" class="col-sm-3">Make Pin Post</label>
                              <div class="col-sm-9">
                                <input type="checkbox" id="inputPinPost" name="pin_post" value="1" {{ $post->pin_post == 1 ? 'checked' : '' }} >
                                <span>(Select as pin post)</span>
                              </div>
                            </div>                                                                                                                
                            <div class="form-group row">
                                <label for="inputImage" class="col-sm-3">Image</label>
                                <div class="col-sm-9">
                                    <input type="file" id="inputImage" name="image[]" multiple class="form-control" accept="image/*">                                
                                    <div class="form-group p-2 m-0">
                                      @foreach ($post->image as $image)              
                                        <img width="60" src="/uploads/{{$image}}" alt="">
                                      @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputVideo" class="col-sm-3">Video</label>
                              <div class="col-sm-9">
                                <input type="file" id="inputVideo" name="video" class="form-control" accept="video/mp4,video/x-m4v,video/*">
                              </div>
                            </div>
                        </div>
                        <div style="padding:15px;">                                
                            <div class="d-flex float-right">
                                {{-- <input style="margin-right: 5px;" type="" value="Schedule Post" class="btn btn-outline-secondary">     --}}
                                <input type="submit" value="Update Post" class="btn btn-primary">                                
                            </div>
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
    $('#inputLogo').change(function(){                
        let reader = new FileReader();
        reader.onload = (e) => { 
            $('#preview-logo').attr('src', e.target.result); 
        }
        reader.readAsDataURL(this.files[0]);         
    });
    $(document).ready(function() {
        $('.select2').select2();
    });

    $(function () {
      // Summernote
      $('#inputDetails').summernote()  
    })


    $(document).ready(function() {

      CKEDITOR.replace('details', {
          toolbar: [
              ['Cut', 'Copy','Paste','PasteText','PasteFromWord','-','Textarea','Undo','Redo','-','Bold', 'Italic', 'Underline', 'Strike', 'TextColor', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink','Indent','Outdent','Blockquote','Styles','Format']
          ]
      });
    });
</script>
@endsection