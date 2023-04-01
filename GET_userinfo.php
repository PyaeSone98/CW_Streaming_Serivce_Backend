<?php
include_once 'core.php';
include 'dbconnect.php';
include 'decodetoken.php';

$headers = apache_request_headers();
$token = $headers['token'];

$decodedToken = decodeToken($token);
$user_id = $decodedToken;

$user_info_query = "SELECT first_name,last_name,username,email,billing_plan FROM users WHERE id= $user_id";
$user_info_result =$db->query($user_info_query);

if($user_info_result->num_rows>0) {
    $user_data = $user_info_result->fetch_assoc();
    echo json_encode($user_data);
}else {
    echo json_encode(array("user info not found"));
}
    

?>