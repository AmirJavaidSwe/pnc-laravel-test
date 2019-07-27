<?php
namespace App\Http\Controllers;
use App\Company;
use Illuminate\Http\Request;
class CompanyController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        $data = [];
        $data['companies'] = Company::orderby('created_at', 'DESC')->paginate(10);
        return view('companies.index')->with($data);
    }
    public function create() {
        return view('companies.create');
    }
    public function store(Request $request) {
        $request_payload_required = [
            'name'    => 'required|min:3',
            'website' => 'required|url',
            'email'   => 'required|string|email|unique:companies',
            'logo'    => 'required|image|mimes:jpeg,png,jpg|dimensions:max_width=100px,max_height=100px'
        ];
        \Validator::make($request->all(), $request_payload_required)->validate();
        try{
            \DB::beginTransaction();
            $get = new Company;
            if($get){
                $get->name = $request->get('name');
                $get->email = $request->get('email');
                $get->website = $request->get('website');
                if(count($request->file('logo')) > 0){
                    $content = file_get_contents($request->file('logo')->getRealPath());
                    $rename = basename(preg_replace("/[^A-Za-z0-9\_\-\.]/", '', $request->file('logo')->getClientOriginalName()));
                    \Storage::disk('local')->put('public/'.$rename, $content, 'public');
                    $get->logo = $rename;
                }
                $get->save();
                $get = $get->toArray();
                $content = str_replace(':name', $get['name'], __('sentence.email_text'));
                $content = str_replace(':email', $get['email'], $content);
                \Mail::send(array(), $get, function ($message) use ($get, $content) {
                    $message->to($get['email'], $get['name'])
                    ->subject(__('sentence.comapny_registration_success'))
                    ->setBody($content, 'text/html');
                });
            }
            \DB::commit();
            set_msg_session('company_creation', 'new_company_record_created_successfully', '', 'success');
            return redirect()->route('companies.index');
        } catch (\Exception $e) {
            \DB::rollBack();
            set_msg_session('company_creation', 'new_company_record_creation_fail_try_again' , "", 'error');
            catch_exception($e);
            return back()
            ->withInput();
        }
    }
    public function show(Company $company) {
    }
    public function edit($id) {
        $data = array();
        $id = get_secure_id($id);
        $data['data'] = Company::find($id);
        return view('companies.create')->with($data);
    }
    public function update(Request $request, $id) {
        $id = get_secure_id($id);
        $get = Company::find($id);
        $request_payload_required = [
            'name' => 'required|min:3',
            'website' => 'required|url',
            'email' => 'required|string|email|unique:companies,email,'.$get->id,
        ];
        if(count($request->file('logo')) > 0) {
            $request_payload_required['logo'] = 'required|image|mimes:jpeg,png,jpg|dimensions:max_width=100px,max_height=100px';
        }
        elseif($request->get('old_logo') != '') {
            if(!(\Storage::disk('local')->exists('public/'.basename($request->get('old_logo'))))) {
                $request_payload_required['logo'] = 'required|image|mimes:jpeg,png,jpg|dimensions:max_width=100px,max_height=100px';
            }
        } else {
            $request_payload_required['logo'] = 'required|image|mimes:jpeg,png,jpg|dimensions:max_width=100px,max_height=100px';
        }
        \Validator::make($request->all(), $request_payload_required)->validate();
        try{
            \DB::beginTransaction();
            if($get) {
                $get->name = $request->get('name');
                $get->email = $request->get('email');
                $get->website = $request->get('website');
                if(count($request->file('logo')) > 0) {
                    $content = file_get_contents($request->file('logo')->getRealPath());
                    $rename = basename(preg_replace("/[^A-Za-z0-9\_\-\.]/", '', $request->file('logo')->getClientOriginalName()));
                    \Storage::disk('local')->put('public/'.$rename, $content, 'public');
                    $get->logo = $rename;
                } else {
                    $get->logo = basename($request->get('old_logo'));
                }
                $get->save();
            }
            \DB::commit();
            set_msg_session('company_updation', 'company_record_updated_successfully', '', 'success');
            return redirect()->route('companies.index');
        } catch (\Exception $e) {
            \DB::rollBack();
            dd($e);
            set_msg_session('company_updation', 'company_record_update_fail_try_again' , "", 'error');
            catch_exception($e);
            return back()
            ->withInput();
        }
    }
    public function destroy($id) {
        try{
            \DB::beginTransaction();
            $id = get_secure_id($id);
            $get = Company::find($id);
            if($get) {
                $get->delete();
            }
            \DB::commit();
            set_msg_session('company_updation', 'company_record_deleted' , "", 'success');
            return redirect()->route('companies.index');
        } catch (\Exception $e) {
            \DB::rollBack();
            set_msg_session('company_updation', 'company_record_deletion_fail_try_again' , "", 'error');
            catch_exception($e);
            return back()
            ->withInput();
        }
    }
}