<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = Employee::all();
        
        return view('admin.employees.index',compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $teams = Team::all();
        
        return view('admin.employees.create', compact('teams'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required | email',
        ]);
            if (Employee::where('email', $request->email)->first() != null) {
            return back()->with('error', 'Email already exists!');
        }
        Employee::create($request->all());
     
        return redirect()->route('employees.index')
                        ->with('success','Employee Added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        //
    }

    public function employeeInfo(Request $request) 
    { 
        $employeeInfo = Employee::where('mobile_no', $request->mobile_no)->firstOrFail();
        $employeeInfo['team_name'] = $employeeInfo->team->name;
        if($employeeInfo){
            return response()->json(['employee' => $employeeInfo], 200);
        } 
        
        return response()->json(['error' => 'Employee Not Registered'], 404);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        $teams = Team::all();
        
        return view('admin.employees.edit', compact('teams', 'employee'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required | email',
        ]);
    
        $employee->update($request->all());
     
        return redirect()->route('employees.index')
                        ->with('success','Employee Updated Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        $employee->delete();
        
        return redirect()->route('employees.index')
                        ->with('success','Employee Deleted Successfully.');
    }

    
}
