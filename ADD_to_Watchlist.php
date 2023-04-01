<?php
include 'decodetoken.php';
include_once 'core.php';
include 'dbconnect.php';
// get the JWT token from the Authorization header
$headers = apache_request_headers();
$token = $headers['token'];

$decodedToken = decodeToken($token);
$user_id = $decodedToken;



$entity_id = filter_input(INPUT_GET, 'entity_ID', FILTER_SANITIZE_NUMBER_INT);


// Check if user ID and entity ID are valid
if (!$user_id || !$entity_id) {
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid user or entity'));
    exit();
}

// Prepare a statement to insert a new row into the watchlist table
$insert_query = "INSERT INTO watchlist (user_id, entity_ID) VALUES (?, ?)";
$stmt = $db->prepare($insert_query);
$stmt->bind_param("ii", $user_id, $entity_id);
// Execute the statement and check for errors

if ($stmt->execute()) {
    // Return success message as JSON
    echo json_encode(array('success' => 'Added to watchlist'));
} else {
    
         // Return generic error message as JSON
        header("HTTP/1.0 500 Internal Server Error");
        echo json_encode(array('error' => 'Could not add to watchlist'));
    
}

$stmt->close();
?>
