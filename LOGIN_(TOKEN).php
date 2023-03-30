<?php
include "dbconnect.php";
include_once "core.php";
require_once 'vendor/autoload.php';


use Firebase\JWT\JWT;

// $data = json_decode(file_get_contents("php://input"), true);

// if (!isset($data['email']) || !isset($data['password'])) {
//     header('HTTP/1.1 400 Bad Request');
//     echo json_encode(array('error' => 'Email and password are required'));
//     exit;
// }

// $email = $data['email'];
// $password = $data['password'];

$email= "codeworms23@gmail.com";
$password = "12345678910";

// Validate email format
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    header('HTTP/1.1 400 Bad Request');
    echo json_encode(array('error' => 'Invalid email format'));
    exit;
}

// Use prepared statements to prevent SQL injection
$stmt = mysqli_prepare($db, "SELECT * FROM users WHERE email = ?");
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);
$user = mysqli_fetch_assoc($result);

$billing_plan = $user['billing_plan'];


if ($user && password_verify($password, $user['password'])) {
    $jwtPayload = array(
        "iss" => "issuer",
        "aud" => "localhost:3000",
        "iat" => time(),
        "nbf" => time(),
        "exp" => time() + 10800,
        "sub" => "1234567890",
        "email" => $email,
        "user_id" => $user['id'],
        );

    $jwt = JWT::encode($jwtPayload, 'This is My Secret', 'HS256');

    header('Content-Type: application/json');
    echo json_encode(array('token' => $jwt,'billing_plan'=>$billing_plan));
} else {
    // Don't provide detailed error messages to users
    header('HTTP/1.1 401 Unauthorized');
    exit;
}


mysqli_close($db);
?>
