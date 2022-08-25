@extends('admin.layout')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Add New Employee</h1>
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
    @if ($message = Session::get('error'))
                <div class="alert alert-warning">
                    <p>{{ $message }}</p>
                </div>
            @endif
    <div class="content"> 
        <div class="row">
            <div class="col-md-10">
                <form action="{{ route('employees.store') }}" method="post">
                    @csrf
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-3">Employee Name</label>
                                <div class="col-sm-9">
                                  <input type="text" id="inputName" name="name" class="form-control" placeholder="Elon Mask">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail" class="col-sm-3">Email</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputEmail" name="email" class="form-control" placeholder="name@email.com">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputMobileNo" class="col-sm-3">Mobile Number</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputMobileNo" name="mobile_no" class="form-control" placeholder="0123 456 789">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputTeam" class="col-sm-3">Team</label>
                                <div class="col-sm-9">
                                  <select id="inputTeam" name="team_id" class="form-control">
                                    	<option selected="" disabled="">Select one</option>
                                    	@foreach ($teams as $team)
                                        	<option value="{{$team->id}}">{{$team->name}}</option>                                        
                                    	@endforeach
                                	</select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmployeeCode" class="col-sm-3">Employee Code</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputEmployeeCode" name="employee_code" class="form-control" placeholder="123456">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputDesignation" class="col-sm-3">Designation</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputDesignation" name="designation" class="form-control" placeholder="Officer">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputManager" class="col-sm-3">Manager</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputManager" name="manager" class="form-control" placeholder="Your manager name">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputHq" class="col-sm-3">HQ</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputHq" name="hq" class="form-control" placeholder="Location">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputManagerDOJ" class="col-sm-3">Date of Joining</label>
                              <div class="col-sm-9">
                                <input type="date" id="inputManagerDOJ" name="doj" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputDob" class="col-sm-3">Date of Birth</label>
                              <div class="col-sm-9">
                                <input type="date" id="inputDob" name="dob" class="form-control">
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