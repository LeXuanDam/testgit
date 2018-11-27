<?php
/**
 * Created by PhpStorm.
 * User: Fuji_Staff
 * Date: 10/26/2018
 * Time: 3:15 PM
 */

namespace App\Helper;

use \Firebase\JWT\JWT;

class JSONWebToken
{
    const KEY = "SLDUIY(#FSH@RKLSJDKJSFKFJHFUSC*Xsfjwei";

    public static function encode($token)
    {
        return JWT::encode($token, self::KEY);
    }

    public static function decode($jwt)
    {
        return JWT::decode($jwt, self::KEY, array('HS256'));
    }
}