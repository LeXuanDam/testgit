<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\User;
use JWTAuth;
use JWTFactory;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Helper\JSONWebToken as JWT;
use Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use LaravelFCM\Message\OptionsBuilder;
use LaravelFCM\Message\PayloadDataBuilder;
use LaravelFCM\Message\PayloadNotificationBuilder;
use FCM;

class UsersController extends Controller
{
    public function login(Request $request)
    {
        $body = $request->all();
        $validator = Validator::make($request->all(), [
            'user_name' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $user = User::where('phone', $body['user_name'])->select('id', 'phone', 'email', 'password')->first();
        if ($user == null) {
            return response()->json([
                'code' => 403,
                'message' => 'User not exits'
            ]);
        }
        if (password_verify($body['password'], $user->password)) {
            $user->time_token = time() + 86400;
            $token = JWT::encode($user);
            $token = ['access_token' => $token];
            return response()->json([
                'code' => 200,
                'message' => 'success',
                'data' => $token
            ]);
        }
        return response()->json([
            'code' => 422,
            'message' => 'password không đúng',
        ]);
    }

    public function register(Request $request)
    {
        $body = $request->all();
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
            'password' => 'required',
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $user = User::where('phone', $body['phone'])->first();
        if ($user != null) {
            return response()->json([
                'code' => 1103,
                'message' => 'User exits'
            ]);
        }

        $user = new User();
        $user->phone = $body['phone'];
        $user->password = bcrypt($body['password']);
        $user->name =$body['first_name'] + $body['last_name'];
        $user->level = 0;
        if (isset($body['email'])) {
            $user_mail = User::where('email', $body['email'])->first();
            if ($user_mail != null && $body['email'] != null) {
                return response()->json([
                    'code' => 1104,
                    'message' => 'Email exits'
                ]);
            }
            $user->email = $body['email'];
        }
        if (isset($body['address'])) {
            $user->address = $body['address'];
        }
        if (isset($body['birthday'])) {
            $body['birthday'] = date("Y-m-d", strtotime($body['birthday']));
            $user->birthday = $body['birthday'];
        }
        if (isset($body['gender'])) {
            $user->gender = $body['gender'];
        }
        $user->save();
        return response()->json([
            'code' => 200,
            'message' => 'Dang ki thanh cong'
        ]);
    }


    public function changepassword(Request $request)
    {
        $body = $request->all();
        $token = JWT::decode($request->headers->get('Access-Token'));
        $user = User::find($token->id);
        $validator = Validator::make($request->all(), [
            'current_pass' => 'required',
            'new_pass' => 'required',
            'confirm_pass' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        if ($body['new_pass'] != $body['confirm_pass']) {
            return response()->json([
                'code' => 423,
                'message' => "password xác nhận không đúng"
            ]);
        }

        if (!password_verify($body['current_pass'], $user->password)) {
            return response()->json([
                'code' => 422,
                'message' => "Password cũ không đúng"
            ]);
        }
        $user->password = bcrypt($body['new_pass']);
        $user->save();
        return response()->json([
            'code' => 200,
            'message' => "Đổi password thành công"
        ]);

    }

    public function user(Request $request)
    {
        $token = JWT::decode($request->headers->get('Access-Token'));
        $user = $this->profile($token->id);
        return $user;
    }

    public function profile($id)
    {
        $user = User::where('id', $id)->select('id', 'name', 'phone', 'email', 'birthday', 'avatar', 'address', 'gender')->first();
        if ($user == null) {
            return response()->json([
                "code" => 403,
                "message" => "Không có id user truyền vào"
            ]);
        }
        return response()->json([
            "code" => 200,
            "message" => "Success",
            "data" => $user
        ]);

    }

    public function edit($id, Request $request)
    {
        return response()->json([
            'code' => 400,
            'message' => '123'
        ]);
        $user = User::find($id);
        $body = $request->all();

        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }

        if (isset($body['avatar'])) {
            $validator = Validator::make($request->all(), [
                'avatar' => 'mimes:jpeg,bmp,png,jpg,gif'
            ]);

            if ($validator->fails()) {

            }

            $file = $request->avatar;
            $temp = $file->getClientOriginalExtension('avatar');
            $file->move('avatar', "avatar_$id.$temp");
            $user->avatar = url("/avatar/avatar_$id.$temp");
        }
        $user->email = $body['email'];

        $user->address = $body['address'];
        if ($body['birthday'] == null) $user->birthday = null;
        else {
            $body['birthday'] = date("Y-m-d", strtotime($body['birthday']));
            $user->birthday = $body['birthday'];
        }
        if (isset($body['gender'])) {
            $user->gender = $body['gender'];
        }
        if (isset($body['level'])) {
            $user->level = $body['level'];
        }
        $user->name = $body['name'];

        $user->save();
        return response()->json([
            "code" => 200,
            "message" => "Update thành công user #$id"
        ]);
    }

    public function checkuser(Request $request)
    {
        $body = $request->all();
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
        ]);
        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $user = User::where('phone', $body['phone'])->first();
        if ($user == null) {
            return response()->json([
                'code' => 1103,
                'message' => 'User not exits'
            ]);
        } else {
            return response()->json([
                'code' => 200,
                'message' => 'User exits'
            ]);
        }
    }

    public function sendotp(Request $request)
    {
        $body = $request->all();
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $user = User::where('phone', $body['phone'])->first();
        if ($user == null) {
            return response()->json([
                'code' => 1103,
                'message' => 'User not exits'
            ]);
        }
        return view('sendotp', ['phone' => $body['phone']]);
    }

    public function otp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'otp' => 'required',
            'confirmationResult' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        return view('sendotp', ['otp' => $request->otp, 'confirmationResult' => $request->confirmationResult]);
    }

    public function verifiotp(Request $request)
    {
        $data = $request->all();
        dd($data);
        if ($data['message'] == 1) {
            return response()->json([
                'code' => 200,
                'message' => 'Success'
            ]);
        }
        return response()->json([
            'code' => 400,
            'message' => 'verification error'
        ]);
    }

    public function firebase(Request $request)
    {
        try {
            $optionBuilder = new OptionsBuilder();
            $optionBuilder->setTimeToLive(60 * 20);

            $notificationBuilder = new PayloadNotificationBuilder('Notification');
            $notificationBuilder->setBody('Notification 1')
                ->setSound('default')->setIcon('http://url-to-an-icon/icon.png');

            $dataBuilder = new PayloadDataBuilder();
            $dataBuilder->addData(['a_data' => 'my_data']);

            $option = $optionBuilder->build();

            $notification = $notificationBuilder->build();
            $data = $dataBuilder->build();
            $token = "eLuOTV6GLE8:APA91bENEVObAbqeyR9mjfe37xXIUHxzS9ZFkS-MMF9jk7-2o1VtDHV_16A9jl56Yzb64IVA6c8WZHhLmhpAsFe_tW021P17tl7_3_8rR_FPqc26Fu3agBepFLkX2QCrkh0g7fwsy4F7";

            $downstreamResponse = FCM::sendTo($token, $option, $notification, $data);

            $downstreamResponse->numberSuccess();
            $downstreamResponse->numberFailure();
            $downstreamResponse->numberModification();

            $downstreamResponse->tokensToDelete();

            $downstreamResponse->tokensToModify();

            $downstreamResponse->tokensToRetry();
        } catch (Exception $e) {
            dd($e);
        }
    }

}
