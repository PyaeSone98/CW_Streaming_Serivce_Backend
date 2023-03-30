<?php
require_once 'vendor/autoload.php';

use Firebase\JWT\JWT;
use Firebase\JWT\Key;
function decodeToken($jwt) {
    $secret_key = 'This is My Secret';
    $decoded = JWT::decode($jwt, new Key($secret_key, 'HS256'));


    return $decoded->user_id;

   
}


?>
