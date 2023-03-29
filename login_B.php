<?php
include 'dbconnect.php';
session_start();

$login_data = json_decode(file_get_contents('php://input'), true);

    // Get the email and password from the form
    $email = sanitize_input($login_data['email']);
    $password = sanitize_input($login_data['password']); 
    // Query the database for the user with the given email
    $query = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($db, $query);

    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
    
            // $data[] = $row;
            // echo json_encode($data);
        // Verify the password using password_verify()
        if(password_verify($password, $row['password'])) {
            // Password is correct, set session variables
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['email'] = $row['email'];
            
           
            echo json_encode(array('success' => true, 'billing_plan' => $row['billing_plan']));
            exit;
        } else {
            // Password is incorrect, display an error message
            echo json_encode(array('error' => 'Invalid email or password',));
        }
    } else {
        // User not found, display an error message
        echo json_encode(['error' => 'email and password are required']);
    }


?>
