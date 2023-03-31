<?php
include_once 'core.php';
include 'dbconnect.php';
include 'decodetoken.php';
// Sanitize the user ID and entity ID from the request

$authHeader = $_SERVER['HTTP_AUTHORIZATION'];
$token = str_replace('Bearer ', '', $authHeader);


$decodedToken = decodeToken($token);
$user_id = $decodedToken;

$entity_id = filter_input(INPUT_GET, 'entity_ID', FILTER_SANITIZE_NUMBER_INT);


// Check if user ID and entity ID are valid
if (!$user_id || !$entity_id) {
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid user or entity'));
    exit();
}

// Prepare a statement to select the watchlist entry for the given user and entity
$select_query = "SELECT * FROM watchlist WHERE user_id = ? AND entity_ID = ?";
$stmt = $db->prepare($select_query);
$stmt->bind_param("ii", $user_id, $entity_id);

// Execute the statement and check for errors
if ($stmt->execute()) {
    $result = $stmt->get_result();
    // Check if a row was returned
    if ($result->num_rows > 0) {
        // Return success message as JSON with watchlist information
        $check_data = array();
        $check_data['is_in_watchlist'] = true;
        $check_data['watchlist_entry'] = $result->fetch_assoc();
        echo json_encode($check_data);
    } else {
        // Return success message as JSON with no watchlist information
        echo json_encode(array('is_in_watchlist' => false));
    }
} else {
    // Return error message as JSON
    header("HTTP/1.0 500 Internal Server Error");
    echo json_encode(array('error' => 'Could not check watchlist'));
}
$stmt->close();
?>
