<?php
include_once 'core.php';
include 'dbconnect.php';
include 'decodetoken.php';

$authHeader = $_SERVER['HTTP_AUTHORIZATION'];
$token = str_replace('Bearer ', '', $authHeader);

$decodedToken = decodeToken($token);
$user_id = $decodedToken;

$entity_id = filter_input(INPUT_GET, 'entity_id', FILTER_SANITIZE_NUMBER_INT);



// Check if user ID and entity ID are valid
if (!$user_id || !$entity_id) {
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid user or entity'));
    exit();
}

// Prepare a statement to delete a row from the watchlist table
$delete_query = "DELETE FROM watchlist WHERE user_id = ? AND entity_ID = ?";
$stmt = $db->prepare($delete_query);
$stmt->bind_param("ii", $user_id, $entity_id);
// Execute the statement and check for errors
if ($stmt->execute()) {
    // Check if any rows were affected
    if ($stmt->affected_rows > 0) {
        // Return success message as JSON
        echo json_encode(array('success' => 'removed from watchlist'));
    } else {
        // Return error message as JSON
        header("HTTP/1.0 404 Not Found");
        echo json_encode(array('error' => ' not found in watchlist'));
    }
} else {
    // Return error message as JSON
    header("HTTP/1.0 500 Internal Server Error");
    echo json_encode(array('errpppor' => 'Could not remove from watchlist'));
}
$stmt->close();
?>
