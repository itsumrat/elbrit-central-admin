@extends('admin.layout')

@section('title', 'add new post')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Add New Post</h1>
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
                <form action="{{ route('posts.store') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="inputDetails" class="col-sm-3">Details</label>
                              <div class="col-sm-9">
                                <textarea class="form-control" name="details"></textarea>
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmployee" class="col-sm-3">Share With Employee </label>
                              <div class="col-sm-9">
                                <select id="inputEmployee" name="employee_ids[]" class="form-control select2" multiple="" data-placeholder="Select Employee">
                                  @foreach ($employees as $employee)                                    
                                    <option value="{{$employee->id}}">{{$employee->name}}</option>                                    
                                  @endforeach
                                </select>
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
                            <div class="form-group row">
                                <label for="inputPinPost" class="col-sm-3">Make Pin Post</label>
                              <div class="col-sm-9">
                                <input type="checkbox" id="inputPinPost" value="1" name="pin_post">
                                <span>(Select as pin post)</span>
                              </div>
                            </div>                                                                                                                
                            <div class="form-group row">
                                <label for="inputImage" class="col-sm-3">Image</label>
                              <div class="col-sm-9">
                                <input type="file" id="inputImage" name="image[]" multiple class="form-control" accept="image/.jpg">
                              </div>
                            </div>
                            <div class="form-group row">
                              <div class="offset-sm-3 col-sm-9">
                                <div id="msnImagebox" class="msnImagebox">
                                      <span id="close-btn" class="close-btn" onclick="uploadReset()">X</span>                            
                                </div>
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputfile" class="col-sm-3">Files</label>
                              <div class="col-sm-9">
                                <input type="file" id="inputFile" name="filenames[]" multiple class="form-control">
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
                                <input style="margin-right: 5px;" type="button" value="Schedule Post" class="btn btn-outline-secondary"  data-toggle="modal" data-target="#scheduleModal">    
                                <input type="submit" value="Post Now" class="btn btn-primary">                                
                            </div>
                        </div>
                        <!--Schedule Post Modal -->
                        <div class="modal fade" id="scheduleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-lg" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Schedule Post</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group row">
                                        <label for="inputPublishAt" class="col-sm-3">Select Date and Time</label>
                                        <div class="col-sm-9">
                                          <input type="datetime-local" id="inputPublishAt" name="published_at" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary">Create Post</button>
                                </div>
                              </div>
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





function previewImages() {

  var preview = document.querySelector('#msnImagebox');
  
  if (this.files) {
    [].forEach.call(this.files, readAndPreview);
  }

  function readAndPreview(file) {

    // Make sure `file.name` matches our extensions criteria
    if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
      return alert(file.name + " is not an image");
    } // else...
    
    var reader = new FileReader();
    
    reader.addEventListener("load", function() {
      var image = new Image();
      image.height = 100;
      image.title  = file.name;
      image.src    = this.result;
      preview.appendChild(image);
    });
    
    reader.readAsDataURL(file);
  document.getElementById('close-btn').style.visibility = "visible";
  }
  

}

document.querySelector('#inputImage').addEventListener("change", previewImages);
function uploadReset(){
document.getElementById('inputImage').value = "";
  //document.getElementById('preview').innerHTML = "";
  document.getElementById('close-btn').style.visibility = "hidden";
  //var parent = document.getElementById('preview');
// var child = document.getElementsByTagName('img')[0];
// parent.removeChild(child);
  //var images = document.getElementsByTagName('img');
  var images = document.getElementById('msnImagebox').getElementsByTagName('img');
var l = images.length; for (var i = 0; i < l; i++) { 
images[0].parentNode.removeChild(images[0]); }
  }


</script>

@endsection