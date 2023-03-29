<?php

include 'core.php';
include 'dbconnect.php';
$data = json_decode(file_get_contents('php://input'), true);
$email = $data['email'];
$password = $data['password'];

// Hash th new password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

// Update the user's password in the database
$stmt = $db->prepare('UPDATE users SET password = ? WHERE email = ?');
$stmt->execute([$hashed_password, $email]);

echo json_encode(array('success' => true));
?>
