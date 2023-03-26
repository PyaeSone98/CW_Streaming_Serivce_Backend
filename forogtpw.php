<?php

include 'connect.php';

session_start();

if(isset($_SESSION['username'])) {
  header("Location: home.php");
  exit();
}

if(isset($_POST['submit'])) {
  
  $email = $_POST['email'];

  $sql = "SELECT data FROM register WHERE data->'$.email' = '$email'";
  
  $result = mysqli_query($conn, $sql);
  
  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $json_data = $row['data'];
    
    // Decode JSON data
    $data = json_decode($json_data, true);
    
    
    $new_password = bin2hex(random_bytes(8));

    $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
    
    // Update database with new password
    $sql = "UPDATE users SET data = JSON_SET(data, '$.password', '$hashed_password') WHERE data->'$.email' = '$email'";
    mysqli_query($conn, $sql);
    
    // Send email to user with new password
    $to = $email;
    $subject = "New password for your account";
    $message = "Your new password is: " . $new_password;
    $headers = "From: @example.com";
    mail($to, $subject, $message, $headers);
    
    // Display success message
    $_SESSION['success'] = "A new password has been sent to your email address.";
    
    // Redirect to login page
    header("Location: login.php");
    exit();
  } else {
    // Display error message
    $_SESSION['error'] = "Invalid email address.";
  }
  
  // Close connection
  mysqli_close($conn);
}

?>

