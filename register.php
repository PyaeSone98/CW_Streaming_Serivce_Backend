<?php

include 'dbconnect.php';
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
    header("Location: subscribe.php");
    exit();
}

// Check if user has submitted the registration form
if (isset($_POST['submit'])) {
    
    // Redirect to login page
    header("Location: login.php");
    exit();
}

session_start();

if(isset($_SESSION['username'])) {
  
  header("Location: home.php");
  exit();
}


if(isset($_POST['submit'])) {
  
    $firstname = mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastname = mysqli_real_escape_string($conn, $_POST['lastName']);
    $username = mysqli_real_escape_string($conn, $_POST['userName']);
    $email = mysqli_real_escape_string($conn, $_POST['Email']);
    $password = mysqli_real_escape_string($conn, $_POST['Password']);
    $repassword = mysqli_real_escape_string($conn, $_POST['re_password']);
    
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $_SESSION['error'] = "Invalid email format";
        header("Location: register.php");
        exit();
    }
    
    // Check if password is at least 8 characters long
    if (strlen($password) < 8) {
        $_SESSION['error'] = "Password must be at least 8 characters long";
        header("Location: register.php");
        exit();
    }
    
  
  if(empty($firstname) || empty($lastname) || empty($username) || empty($email) || empty($password) || empty($repassword)) {
    // Display error message
    $_SESSION['error'] = "Please fill all required fields.";
  }
  elseif($password != $repassword) {
    // Display error message
    $_SESSION['error'] = "Password does not match the confirm password.";
  }
  else {
    
    $encrypted_password = password_hash($password, PASSWORD_DEFAULT);
    
    // Create JSON data
    $data = array(
      'firstname' => $firstname,
      'lastname' => $lastname,
      'username' => $username,
      'email' => $email,
      'password' => $encrypted_password,
      'date' => date("Y-m-d H:i:s")
    );
    
    // Convert JSON data to string
    $json_data = json_encode($data);
    
    // Prepare SQL statement
    $sql = "INSERT INTO register (firstName	,lastName ,	userName,	Email,	Password,	re_password	)
    VALUES ('$json_data')";
    
    if (mysqli_query($conn, $sql)) {
      // Display success message
      $_SESSION['success'] = "User registered successfully!";
      // Redirect to login page
      header("Location: subscribe.php");
      exit();
    } else {
      // Display error message
      $_SESSION['error'] = "Error: " . mysqli_error($conn);
    }
    
    // Close connection
    mysqli_close($conn);
  }

}
