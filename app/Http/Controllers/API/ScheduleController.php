<?php

namespace App\Http\Controllers\API;

use function GuzzleHttp\Psr7\str;
use Illuminate\Http\Request;
use App\Schedule;
use App\User;
use App\Helper\JSONWebToken as JWT;
use Validator;

class ScheduleController extends Controller
{
    public function create(Request $request)
    {
        $data = $request->all();
        $token = JWT::decode($request->headers->get('Access-Token'));
        $validator = Validator::make($request->all(), [
            'start_time' => 'required|date',
            'end_time' => 'required|date|after_or_equal:start_time',
            'title' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }
        $schedule = new Schedule();
        $schedule->user_id = $token->id;
        $schedule->start_time = $data['start_time'];
        $schedule->end_time = $data['end_time'];
        $schedule->title = $data['title'];
        if (isset($data['parent_company'])) {
            $schedule->parent_company = $data['parent_company'];
        }
        if (isset($data['order_company'])) {
            $schedule->ordering_company = $data['order_company'];
        }
        if (isset($data['children_company'])) {
            $schedule->children_company = $data['children_company'];
        }
        if (isset($data['location'])) {
            $schedule->location = $data['location'];
        }
        if (isset($data['memo'])) {
            $schedule->memo = $data['memo'];
        }
        $schedule->save();
        return response()->json([
            'code' => 200,
            'message' => "Bạn đã thêm thành công schedule"
        ]);

    }

    public function edit($id, Request $request)
    {
        $data = $request->all();
        $validator = Validator::make($request->all(), [
            'start_time' => 'required|date',
            'end_time' => 'required|date|after_or_equal:start_time',
            'title' => 'required',
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors();
            return response()->json([
                'code' => 400,
                'message' => "params sai định dạng"
            ]);
        }

        $schedule = Schedule::find($id);
        if ($schedule == null) {
            return response()->json([
                "code" => 400,
                "message" => "Không có schedule này"
            ]);
        }
        if (isset($data['start_time'])) {
            $schedule->start_time = $data['start_time'];
        }
        if (isset($data['end_time'])) {
            $schedule->end_time = $data['end_time'];
        }
        if (isset($data['title'])) {
            $schedule->title = $data['title'];
        }
        if (isset($data['location'])) {
            $schedule->location = $data['location'];
        }
        if (isset($data['memo'])) {
            $schedule->memo = $data['memo'];
        }
        $schedule->save();
        return response()->json([
            'code' => 200,
            'message' => "Bạn đã sửa thành công schedule #$id"
        ]);
    }

    public function show($id)
    {
        $schedule = Schedule::select('id', 'user_id', 'start_time', 'end_time', 'title', 'location', 'memo')->find($id);
        if ($schedule == null) {
            return response()->json([
                "code" => 400,
                "message" => "Không có schedule này"
            ]);
        }
        return response()->json([
            "code" => 200,
            "message" => "Success",
            "data" => $schedule
        ]);
    }

    public function cutdate($tehai,$start_time,$tehais)
    {
        $first_week = [];
        $first_week[0] = strtotime($start_time);
        for ($i = 1; $i < 6; $i++) {
            $first_week[$i] = $first_week[$i - 1] + 86400 * 7;
        }

        for ($i = 0; $i < 6; $i++) {
            if ($i < 5) {
                if (strtotime($tehai->start_time) <= $first_week[$i]) {
                    if (strtotime($tehai->start_time) < $first_week[$i]) {
                        $new_start_date = $tehai->start_time;
                        $tehai->start_time = date('Y/m/d', $first_week[$i]);
                        if (strtotime($tehai->end_time) >= $first_week[$i]) {
                            $new_end_date = $first_week[$i] - 86400;
                        } else $new_end_date = strtotime($tehai->end_time);
                    }
                    if (strtotime($tehai->start_time) == $first_week[$i]) {
                        $new_start_date = $tehai->start_time;
                        if (strtotime($tehai->end_time) >= $first_week[$i+1]) {
                            $tehai->start_time = date('Y/m/d', $first_week[$i + 1]);
                            $new_end_date = $first_week[$i + 1] -86400;
                        }
                        else $new_end_date = strtotime($tehai->end_time);
                    }
                }

            }
            else {
                if (strtotime($tehai->start_time) >= $first_week[$i]) {
                    $new_start_date = $tehai->start_time;
                    $tehai->start_time = date('Y/m/d', $first_week[$i]);
                    if (strtotime($tehai->end_time) >= $first_week[$i] + 86400 * 6) {
                        $new_end_date = $first_week[$i] + 86400 * 6;
                    } else $new_end_date = strtotime($tehai->end_time);

                }

            }
            if(isset($new_start_date)) {
                $temp = new \stdClass();
                $temp->id = $tehai->id;
                $temp->title = $tehai->title;
                $temp->start_time = $new_start_date;
                $temp->end_time = date('Y/m/d',$new_end_date);
                $temp->memo = $tehai->memo;
                $temp->location = $tehai->location;
                dd($temp);
                $tehais = array_push($tehais,$temp);
            }
        }
        return $tehais;
    }

    public function list(Request $request)
    {
        $token = JWT::decode($request->headers->get('Access-Token'));
        $data = $request->all();
        $validator = Validator::make($request->all(), [
            'start_time' => 'required|date',
            'end_time' => 'required|date|after_or_equal:start_time',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => "param sai định dạng"
            ]);
        }
        $schedules = Schedule::where('user_id', $token->id)->where(function ($query) use ($data) {
            $query->where('start_time', '>=', $data['start_time'])->where('start_time', '<=', $data['end_time']);
        })->orwhere(function ($query) use ($data) {
            $query->where('end_time', '>=', $data['start_time'])->where('end_time', '<=', $data['end_time']);
        })->select('memo', 'location', 'title', 'start_time', 'end_time', 'id')->get();
//        foreach ($schedules as $entry){
//            $schedules = $this->cutdate($entry,$data['start_time'],$schedules);
//
//        }
//        dd($schedules);

        return response()->json([
            "code" => 200,
            "message" => "Success",
            "data" => $schedules
        ]);

    }

    public function delete($id)
    {
        $schedule = Schedule::find($id);
        if ($schedule == null) {
            return response()->json([
                "code" => 400,
                "message" => "schedule không tồn tại",
            ]);
        }
        $schedule->delete();
        return response()->json([
            "code" => 200,
            "message" => "Xóa thành công schedule #$id",
        ]);
    }
}
