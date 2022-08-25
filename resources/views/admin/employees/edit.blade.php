@extends('admin.layout')
  
@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Edit Employee</h1>
            </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    @if(count($errors) > 0)
    <div class="row">
        <div class="col-md-8 offset-2">            
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
            <div class="col-10">
                <form action="{{ route('employees.update', $employee->id) }}" method="POST">
                    @csrf
                    @method('PATCH')
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-3">Employee Name</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputName" name="name" value="{{$employee->name}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail" class="col-sm-3">Email</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputEmail" name="email" value="{{$employee->email}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputMobileNo" class="col-sm-3">Mobile Number</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputMobileNo" name="mobile_no" value="{{$employee->mobile_no}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputTeam" class="col-sm-3">Team</label>
                              <div class="col-sm-9">
                                <select id="inputTeam" name="team_id" class="form-control custom-select">
                                    <option selected="" disabled="">Select one</option>
                                    @foreach ($teams as $team)
                                        <option value="{{$team->id}}" {{$team->id == $employee->team_id ? 'selected' : '' }}>{{$team->name}}</option>                                        
                                    @endforeach
                                </select>
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmployeeCode" class="col-sm-3">Employee Code</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputEmployeeCode" name="employee_code" value="{{$employee->employee_code}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputDesignation" class="col-sm-3">Designation</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputDesignation" name="designation" value="{{$employee->designation}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputManagerEmployeeCode" class="col-sm-3">Manager Employee Code</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputManagerEmployeeCode" name="manager_employee_code" value="{{$employee->manager_employee_code}}" class="form-control">
                              </div>
                              </div>
                            <div class="form-group row">
                                <label for="inputHq" class="col-sm-3">HQ</label>
                              <div class="col-sm-9">
                                <input type="text" id="inputHq" name="hq" value="{{$employee->hq}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputManagerDOJ" class="col-sm-3">Date of Joining</label>
                              <div class="col-sm-9">
                                <input type="date" id="inputManagerDOJ" name="doj" value="{{$employee->doj}}" class="form-control">
                              </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputDob" class="col-sm-3">Date of Birth</label>
                              <div class="col-sm-9">
                                <input type="date" id="inputDob" name="dob" value="{{$employee->dob}}" class="form-control">
                              </div>
                            </div>
                        </div>
                        <div style="padding:15px;">                                
                            <input type="submit" value="Save" class="btn btn-primary float-right" style="width: 180px">    
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