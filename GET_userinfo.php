<?php
include_once 'core.php';
include 'dbconnect.php';

session_start();

$id = $_SESSION['user_id'];
$user_info_query = "SELECT first_name,last_name,username,email,billing_plan FROM users WHERE id= $id";
$user_info_result =$db->query($user_info_query);

if($user_info_result->num_rows>0) {
    $user_data = $user_info_result->fetch_assoc();
}
    echo json_encode($user_data);

?>