<?php
include_once 'core.php';
include 'dbconnect.php';

$data = json_decode(file_get_contents('php://input'), true);

$email = $data['email'];
$otp = $data['otp'];

$stmt = $db->prepare('SELECT * FROM users WHERE email = ? AND otp = ?');
$stmt->execute([$email, $otp]);
$user = $stmt->fetch();

if (!$user) {
  // OTP is invalid, display error message
  echo json_encode(array('success' => false, 'message' => 'Invalid OTP'));
  exit;
}

// OTP is valid, redirect to password reset page
echo json_encode(array('success' => true));
