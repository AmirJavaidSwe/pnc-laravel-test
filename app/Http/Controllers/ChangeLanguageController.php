<?php
namespace App\Http\Controllers;
use App\Company;
use Illuminate\Http\Request;
class ChangeLanguageController extends Controller {
    public function changeLang()
    {
        $request = Request();
        $lang = $request->get('lang');
        \Artisan::call('clear-compiled');
        \Artisan::call('cache:clear');
        \Artisan::call('view:clear');
        \Artisan::call('route:clear');
        \Artisan::call('config:clear');
        session(['locale' => $lang]);
        app()->setLocale($lang);
        set_msg_session('lang_change', "language_changed_successfully" , "", 'success');
        return redirect()->back();
    }
}