<?php
include_once('core.php');
include('dbconnect.php');
require '/xampp/vendor/autoload.php';

//set maximum executing time custom as we need a long time to encode a video
ini_set('max_execution_time', '7200');


// get the movie ID from the URL
$id = 19;

$get_file_path_sql = "SELECT file_path FROM videos WHERE entity_ID=$id";
$get_file_path = $db->query($get_file_path_sql);

//check if any rows were returned
if($get_file_path->num_rows > 0) {
    $get_video_filepath = $get_file_path->fetch_assoc(); 

    // Define the video file path and ID
$video_filepath = $get_video_filepath["file_path"];


// Define the output folder for the DASH segments
$dash_folder = "C:/xampp/htdocs/dash/dash$id";

mkdir("dash/dash$id");

// Define an array of bitrates and resolutions
$bitrates = array(
    '240p' => array('scale' => '426:-2', 'bitrate' => '400k'),
    '360p' => array('scale' => '640:-2', 'bitrate' => '800k'),
    '480p' => array('scale' => '854:-2', 'bitrate' => '1200k'),
    '720p' => array('scale' => '1280:-2', 'bitrate' => '4000k'),
    '1080p' => array('scale' => '1920:-2', 'bitrate' => '4500k')
);

// Loop through the bitrates array and create segments for each bitrate
foreach ($bitrates as $resolution => $options) {
    $scale = $options['scale'];
    $bitrate = $options['bitrate'];

    mkdir("dash/dash$id/$resolution");
    $command = "ffmpeg -i $video_filepath -c:v libx264 -c:a aac -b:v $bitrate -b:a 128k -vf scale=$scale -hls_time 10 -hls_playlist_type vod -hls_segment_filename $dash_folder/$resolution/%03d.ts $dash_folder/$resolution/$id.$resolution.m3u8";
    
    exec($command);
}//Process the video using FFmpeg
   

}