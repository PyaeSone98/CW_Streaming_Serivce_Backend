<?php
// Include core.php and dbconnect.php files
include_once 'core.php';
require_once 'dbconnect.php';

// Get the JSON data from the request body
$data = json_decode(file_get_contents('php://input'), true);

// Sanitize and validate input data
$first_name = sanitize_input($data['first_name']);
$last_name = sanitize_input($data['last_name']);
$username = sanitize_input($data['username']);
$email = sanitize_input($data['email']);
$password = sanitize_input($data['password']);

// Check if any required field is empty
if (empty($first_name) || empty($last_name) || empty($username) || empty($email) || empty($password)) {
  http_response_code(400); // Bad Request
  die(json_encode(array('error' => 'All fields are required')));
}

// Check if username or email already exists in the database
$stmt = $db->prepare("SELECT * FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows > 0) {
  http_response_code(409); // Conflict
  die(json_encode(array('error' => 'email already exists')));
}

// Hash the password
$password_hashed = password_hash($password, PASSWORD_DEFAULT);

// Insert the user into the database
$stmt = $db->prepare("INSERT INTO users (first_name, last_name, username, email, password) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $first_name, $last_name, $username, $email, $password_hashed);
if ($stmt->execute()) {
  http_response_code(200); // OK
  die(json_encode(array('message' => 'User registered successfully')));
} else {
  http_response_code(500); // Internal Server Error
  die(json_encode(array('error' => 'Could not register user')));
}

$stmt->close();
$db->close();

// Function to sanitize input data
function sanitize_input($input) {
  $input = trim($input);
  $input = stripslashes($input);
  $input = htmlspecialchars($input);
  return $input;
}
?>
