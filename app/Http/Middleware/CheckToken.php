<?php

namespace App\Http\Middleware;

use Closure;
use App\Helper\JSONWebToken as JWT;
use App\User;
class CheckToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = JWT::decode($request->headers->get('Access-Token'));
        $user = User::find($token->id);
        if ($user == null) {
            return response()->json([
                "code" => 498,
                "message" => "Invalid Token"
            ]);
        }
        if ($token->time_token < time()) {
            return response()->json([
                "code" => 498,
                "message" => "Invalid Token"
            ]);
        }
        return $next($request);
    }
}
