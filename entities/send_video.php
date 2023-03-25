<?php
include_once('core.php');
include('dbconnect.php');
require '/xampp/vendor/autoload.php';


$id = 19;

$file_path_query = "SELECT file_path FROM videos WHERE entity_ID = $id";
$send_file_path = $db -> query($file_path_query);

if($send_file_path->num_rows > 0) {
    $path = $send_file_path->fetch_assoc();

    // Path to the video file
    $video_path = $path['file_path'];
    
    echo json_encode($video_path);

    
    


}