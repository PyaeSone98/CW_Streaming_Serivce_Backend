<?php
include 'connect.php';

// Start session
session_start();
// Check if user is logged in
if (isset($_SESSION['user_id'])) {
    // User is already logged in, redirect to home page
    header("Location: home.php");
    exit();
}
// Check if user has a subscription plan
if (!isset($_SESSION['subscription'])) {
    // User does not have a subscription plan, redirect to subscription page
    $_SESSION['error'] = "You need to purchase a subscription plan to proceed";
    header("Location: subscribe.php");
    exit();
}

if (isset($_POST['submit'])) {
    // Redirect to home page if user is authenticated
    header("Location: home.php");
    exit();
}

session_start();
if(isset($_SESSION['username'])) {
  
  header("Location: home.php");
  exit();
}

if(isset($_POST['submit'])) {
  
  $email = $_POST['email'];
  $password = $_POST['password'];
  
  
  $sql = "SELECT data FROM register WHERE data->'$.email' = '$email'";
  

  $result = mysqli_query($conn, $sql);
  
  if (mysqli_num_rows($result) > 0) {
    // Retrieve JSON data
    $row = mysqli_fetch_assoc($result);
    $json_data = $row['data'];
    
    // Decode JSON data
    $data = json_decode($json_data, true);
    
    // Verify password
    if(password_verify($password, $data['password'])) {
      // Set session variables
      $_SESSION['username'] = $data['username'];
      $_SESSION['email'] = $data['email'];
      // Redirect to home page or dashboard
      header("Location: subscribe.php");
      exit();
    }
    else {
      // Display error message
      $_SESSION['error'] = "Invalid password.";
    }
  } else {
    // Redirect to register page
    header("Location: register.php");
    exit();
  }
  
  // Close connection
  mysqli_close($conn);
}
// Check if the forgot password link was clicked
if(isset($_GET['forgotpw'])) {
  // Redirect to forgot password page
  header("Location: forgotpw.php");
  exit();
}
// Render the login page
?>

