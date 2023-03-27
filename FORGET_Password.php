<?php
include 'core.php';
include 'dbconnect.php';


$data = json_decode(file_get_contents('php://input'), true);
$email = $data['email'];

// Query to fetch user by email
$stmt = $db->prepare('SELECT * FROM users WHERE email = ?');
$stmt->execute([$email]);
$user = $stmt->fetch();

if (!$user) {
  // User not found, display error message
  echo json_encode(array('success' => false, 'message' => 'Email not found'));
  exit;
}

// Close the first prepared statement and its result set
$stmt->close();

// Generate OTP
$otp = mt_rand(1000, 9999);

// Store OTP in database
$stmt = $db->prepare('UPDATE users SET otp = ? WHERE email = ?');
$stmt->execute([$otp, $email]);
$stmt->close();

// Send email with OTP
$to = $email;
$subject = 'Password Reset OTP';
$message = 'Your OTP is: ' . $otp;
$headers = 'From: codeworms23@gmail.com' . "\r\n" .
    'Reply-To: codeworms23@gmail.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);

echo json_encode(array('success' => true));
?>
