<?php
require 'core.php';
require 'dbconnect.php';
require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

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

// Create a new PHPMailer instance
$mail = new PHPMailer(true);

// SMTP configuration for Sendinblue
$mail->isSMTP();
$mail->Host = 'smtp-relay.sendinblue.com';
$mail->SMTPAuth = true;
$mail->Username = 'pyaesonethein98@gmail.com';
$mail->Password = 'L3xcnKzSIrfwQZHg';
$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
$mail->Port =587;

// Sender and recipient
$mail->setFrom('codeworms23@gmail.com', 'Code Worms');
$mail->addAddress($email);

// Email content
$mail->isHTML(true);
$mail->Subject = 'OTP for CW';
$mail->Body    = '<html>
                    <head>
                        <title>OTP for CW</title>
                    </head>
                    <body style="font-family: Arial, sans-serif;">
                        <h2>OTP Code</h2>
                        <p>Use the following OTP code to reset your password:</p>
                        <h1 style="font-size: 48px; color: #00bfff;">'.$otp.'</h1>
                        <p>Please note that this code will expire in 10 minutes.</p>
                        <br>
                        <p>Best regards,</p>
                        <p>Code Worms</p>
                    </body>
                    </html>';

try {
    // Send the email
    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo 'Message could not be sent. Error: ', $mail->ErrorInfo;
}

?>
