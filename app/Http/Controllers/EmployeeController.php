<?php
namespace App\Http\Controllers;
use App\Employee;
use App\Company;
use Illuminate\Http\Request;
class EmployeeController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        $data = [];
        $data['employees'] = Employee::with('company')->orderby('created_at', 'DESC')->paginate(10);
        return view('employees.index')->with($data);
    }
    public function create() {
        $data = [];
        $data['companies'] = Company::orderby('name', 'ASC')->get();
        return view('employees.create')->with($data);
    }
    public function store(Request $request) {
        $request_payload_required = [
            'first_name' => 'required|min:3',
            'last_name'  => 'required|min:3',
            'email'      => 'required|string|email|unique:employees',
            'phone'      => 'required',
            'company'    => 'required',
        ];
        \Validator::make($request->all(), $request_payload_required)->validate();
        $get = new Employee;
        if($get){
            $get->first_name = $request->get('first_name');
            $get->last_name = $request->get('last_name');
            $get->email = $request->get('email');
            $get->phone = $request->get('phone');
            $get->company_id = $request->get('company');
            $get->save();
            set_msg_session('cm_del', "new_employee_created", '', 'success');
            return redirect()->route('employees.index');
        }
    }
    public function show($id) {
    }
    public function edit($id) {
        $data = array();
        $id = get_secure_id($id);
        $data['data'] = Employee::find($id);
        $data['companies'] = Company::orderby('name', 'ASC')->get();
        return view('employees.create')->with($data);
    }
    public function update(Request $request, $id) {
        $id = get_secure_id($id);
        $get = Employee::find($id);
        $request_payload_required = [
            'first_name' => 'required|min:3',
            'last_name'  => 'required|min:3',
            'email'      => 'required|string|email|unique:employees,email,'.$get->id,
            'phone'      => 'required',
            'company'    => 'required',
        ];
        \Validator::make($request->all(), $request_payload_required)->validate();
        if($get){
            $get->first_name = $request->get('first_name');
            $get->last_name  = $request->get('last_name');
            $get->email      = $request->get('email');
            $get->phone      = $request->get('phone');
            $get->company_id = $request->get('company');
            $get->save();
            set_msg_session('cm_del', "employee_updated", '', 'success');
            return redirect()->route('employees.index');
        }
    }
    public function destroy($id) {
        $id = get_secure_id($id);
        $get = Employee::find($id);
        if($get) {
            $get->delete();
        }
        set_msg_session('cm_del', "employee_deleted", '', 'success');
        return redirect()->route('employees.index');
    }
}