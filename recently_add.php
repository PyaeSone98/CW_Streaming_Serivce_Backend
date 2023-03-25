<?php
include_once('core.php');
include('dbconnect.php');

$recentlyadded_query = "SELECT * FROM entity ORDER BY date_added DESC LIMIT 7";
$recentlyadded_result= $db->query($recentlyadded_query);

$RAdata = array();
if($recentlyadded_result->num_rows >0 ) {
    while ($row = $recentlyadded_result->fetch_assoc()){
        $RAdata[] = $row;
    }
}

$db->close();

echo json_encode($RAdata);