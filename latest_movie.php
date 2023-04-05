<?php 
include_once 'core.php';
include 'dbconnect.php';


$latest_entity_query = "SELECT id,is_movie FROM entity ORDER BY date_added DESC LIMIT 1";
$latest_entity_result = $db->query($latest_entity_query);

 

 if($latest_entity_result->num_rows>0) {
    $last_inserted_row= $latest_entity_result->fetch_assoc();
}

    
$id = $last_inserted_row['id'];
$check_entity_type=$last_inserted_row['is_movie'];

if($check_entity_type==1) {
    $lastest_movie_query = "SELECT * FROM videos WHERE entity_ID=$id";
    $lastest_movie_result = $db->query($lastest_movie_query);

    if($lastest_movie_result->num_rows>0){
    $lastest_movie_data=$lastest_movie_result->fetch_assoc();
        $movie_data=$lastest_movie_data;

    }
    $movie_data['id']= $movie_data['entity_ID'];
    $movie_data['cover']= "entities/Super_mario_landscape.jpg";
    echo json_encode($movie_data);
    
}else {
    $lastest_tvshow_query ="SELECT * FROM episodes WHERE entity_ID=$id";
    $latest_tvshow_result = $db->query($lastest_tvshow_query);

    if($latest_tvshow_result->num_rows>0){
        $latest_tvshow_data=$latest_tvshow_result->fetch_assoc();
        $tvshow_data=$latest_tvshow_data;
    }
    echo json_encode($tvshow_data);

}