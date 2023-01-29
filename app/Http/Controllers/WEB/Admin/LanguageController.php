<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Auth;

class LanguageController extends Controller
{
    protected $lang;

    public function __construct()
    {
        $this->lang = Setting::first()->value('default_language');
    }

    public function adminLnagugae()
    {
        $data = include(resource_path("lang/$this->lang/admin.php"));

        return view('admin.admin_language', compact('data'));
    }

    public function updateAdminLanguage(Request $request)
    {
        $dataArray = [];
        foreach ($request->values as $index => $value) {
            $dataArray[$index] = $value;
        }
        file_put_contents(resource_path("lang/$this->lang/admin.php"), "");
        $dataArray = var_export($dataArray, true);
        file_put_contents(resource_path("lang/$this->lang/admin.php"), "<?php\n return {$dataArray};\n ?>");

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function adminValidationLnagugae()
    {
        $data = include(resource_path("lang/$this->lang/admin_validation.php"));

        return view('admin.admin_validation_language', compact('data'));
    }

    public function updateAdminValidationLnagugae(Request $request)
    {
        $dataArray = [];
        foreach ($request->values as $index => $value) {
            $dataArray[$index] = $value;
        }
        file_put_contents(resource_path("lang/$this->lang/admin_validation.php"), "");
        $dataArray = var_export($dataArray, true);
        file_put_contents(resource_path("lang/$this->lang/admin_validation.php"), "<?php\n return {$dataArray};\n ?>");

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function websiteLanguage()
    {
        $data = include(resource_path("lang/$this->lang/user.php"));

        return view('admin.language', compact('data'));
    }

    public function updateLanguage(Request $request)
    {
        $dataArray = [];
        foreach ($request->values as $index => $value) {
            $dataArray[$index] = $value;
        }
        file_put_contents(resource_path("lang/$this->lang/user.php"), "");
        $dataArray = var_export($dataArray, true);
        file_put_contents(resource_path("lang/$this->lang/user.php"), "<?php\n return {$dataArray};\n ?>");

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }


    public function websiteValidationLanguage()
    {
        $data = include(resource_path("lang/$this->lang/user_validation.php"));

        return view('admin.website_validation_language', compact('data'));
    }

    public function updateValidationLanguage(Request $request)
    {
        $dataArray = [];
        foreach ($request->values as $index => $value) {
            $dataArray[$index] = $value;
        }
        file_put_contents(resource_path("lang/$this->lang/user_validation.php"), "");
        $dataArray = var_export($dataArray, true);
        file_put_contents(resource_path("lang/$this->lang/user_validation.php"), "<?php\n return {$dataArray};\n ?>");

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }
}
