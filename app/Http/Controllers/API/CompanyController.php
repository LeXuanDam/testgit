<?php

namespace App\Http\Controllers\API;

use App\Schedule;
use Illuminate\Http\Request;
use App\Company;
use App\User;
use App\Helper\JSONWebToken as JWT;
use Validator;

class CompanyController extends Controller
{
    public function create(Request $request,$title)
    {
        $data = $request->all();
        $token = JWT::decode($request->headers->get('Access-Token'));
        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $schedule = new Company();
        $schedule->company_name = $data['company_name'];
        $schedule->phone = $data['phone'];
        $schedule->created_by = $token->id;
        if (isset($data['address'])) {
            $schedule->address = $data['address'];
        }
        if (isset($data['email'])) {
            $schedule->email = $data['email'];
        }
        if (isset($data['fax'])) {
            $schedule->fax = $data['fax'];
        }
        if (isset($data['director'])) {
            $schedule->director = $data['director'];
        }
        if (isset($data['description'])) {
            $schedule->description = $data['description'];
        }
        if($title =='parent'){
            $schedule->title = 1;
        }
        elseif($title =='order'){
            $schedule->title = 2;
        }
        else {
            $schedule->title = 3;
        }
        $schedule->save();
        return response()->json([
            'code' => 200,
            'message' => "Bạn đã thêm thành công company"
        ]);

    }

    public function edit($id, Request $request)
    {
        $data = $request->all();
        $validator = Validator::make($request->all(), [
            'company_name' => 'required',
            'phone' => 'required',

        ]);

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $schedule = Company::find($id);
        $schedule->company_name = $data['company_name'];
        $schedule->phone = $data['phone'];

        if (isset($data['address'])) {
            $schedule->address = $data['address'];
        }
        if (isset($data['email'])) {
            $schedule->email = $data['email'];
        }
        if (isset($data['fax'])) {
            $schedule->fax = $data['fax'];
        }
        if (isset($data['director'])) {
            $schedule->director = $data['director'];
        }
        if (isset($data['description'])) {
            $schedule->description = $data['description'];
        }
        $schedule->save();
        return response()->json([
            'code' => 200,
            'message' => "Bạn đã sửa thành công company"
        ]);
    }

    public function show($id)
    {
        $company = Company::select('id', 'company_name', 'phone', 'email', 'director', 'title', 'created_by')->find($id);

        if ($company == null) {
            return response()->json([
                "code" => 403,
                "message" => "Không có schedule này"
            ]);
        }
        $company->director_name = $company->user->name;
        unset($company->user);
        return response()->json([
            "code" => 200,
            "message" => "Success",
            "data" => $company
        ]);
    }

    public function list($title)
    {
        if($title == 'parent'){
            $company = Company::where('title',1)->select('id','company_name','address')->get();
            if(count($company) == 0){
                return response()->json([
                    "code" => 403,
                    "message" => 'chưa có công ty loại này'
                ]);
            }
            return response()->json([
                "code" => 200,
                "message"=>'Success',
                "data" => $company
            ]);
        }
        if($title == 'order'){
            $company = Company::where('title',2)->select('id','company_name','address')->get();
            if(count($company) == 0){
                return response()->json([
                    "code" => 403,
                    "data" => 'chưa có công ty loại này'
                ]);
            }
            return response()->json([
                "code" => 200,
                "message"=>'Success',
                "data" => $company
            ]);
        }
        if($title == 'children'){
            $company = Company::where('title',3)->select('id','company_name','address')->get();
            if(count($company) == 0){
                return response()->json([
                    "code" => 403,
                    "message" => 'chưa có công ty loại này'
                ]);
            }
            return response()->json([
                "code" => 200,
                "message"=>'Success',
                "data" => $company
            ]);
        }
        return response()->json([
            "code" => 403,
            "message" => 'Không có loại công ty này'
        ]);
    }

    public function delete($id)
    {
        $company = Company::find($id);
        if ($company == null) {
            return response()->json([
                "code" => 403,
                "message" => "schedule không tồn tại",
            ]);
        }
        $company_genba = Schedule::where('children_company',$id)->orwhere('parent_company',$id)->orwhere('ordering_company',$id)->get();
        if(count($company_genba) > 0){
            return response()->json([
                "code" => 403,
                "message" => "Không thể xóa company này #$id",
            ]);
        }
        $company->delete();
        return response()->json([
            "code" => 200,
            "message" => "Xóa thành công company #$id",
        ]);
    }
}
