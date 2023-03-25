<?php
include_once 'core.php';
include 'dbconnect.php';

// Sanitize the user ID from the request
// $user_id = filter_input(INPUT_GET, 'user_id', FILTER_SANITIZE_NUMBER_INT);
$user_id=$_GET['user_id'];

if(!$user_id){
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid user'));
    exit();
}


// Prepare a statement to select all rows from the watchlist table for the current user
$select_query = "SELECT watchlist.*, entity.title, entity.cover FROM watchlist JOIN entity ON watchlist.entity_id = entity.id WHERE watchlist.user_id = ?";
$stmt = $db->prepare($select_query);
$stmt->bind_param('i', $user_id);
$stmt->execute();
$result = $stmt->get_result();

// Loop through the rows and add them to the data array
$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = array (
        'id'    => $row['entity_ID'],
        'cover' => $row['cover'],
        'title' => $row['title']
    );
}

if(empty($data)){
    // Return an error message if the watchlist is empty
    echo json_encode(array('error'=>'Watchlist not found'));
} else {
    // Return the data as JSON
    echo json_encode($data);
}
