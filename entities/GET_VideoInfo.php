<?php
include_once 'core.php';
include 'dbconnect.php';

// Sanitize user input
 $id = filter_input(INPUT_GET, 'id' , FILTER_SANITIZE_NUMBER_INT);

if (!$id) {
    // Send a 400 Bad Request error if ID is missing or invalid
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid movie ID'));
    exit();
}

$checkmovie_query = "SELECT is_movie FROM entity WHERE id = $id";
$checkmovie_result = $db->query($checkmovie_query);

if ($checkmovie_result->num_rows > 0) {
    $check = $checkmovie_result->fetch_assoc();
    $checkmovie = $check['is_movie'];

    if ($checkmovie == 1) {
        $get_movie_sql = "SELECT * FROM videos WHERE entity_ID = $id";
        $get_movie_result = $db->query($get_movie_sql);

        if ($get_movie_result->num_rows > 0) {
            $movie_data = $get_movie_result->fetch_assoc();
            $data = array();
            $data[] = $movie_data;

            echo json_encode($data);
        } else {
            // Send a 404 Not Found error if no rows were returned
            header("HTTP/1.0 404 Not Found");
            echo json_encode(array('error' => 'Movie not found'));
        }
    } else {
        $get_tvshow_sql = "SELECT * FROM episodes WHERE entity_ID = $id";
        $get_tvshow_result = $db->query($get_tvshow_sql);

        if ($get_tvshow_result->num_rows > 0) {
            $tvshow_data = $get_tvshow_result->fetch_assoc();
            $data = array();
            $data[] = $tvshow_data;

            echo json_encode($data);
        } else {
            // Send a 404 Not Found error if no rows were returned
            header("HTTP/1.0 404 Not Found");
            echo json_encode(array('error' => 'TV show not found'));
        }
    }
} else {
    // Send a 404 Not Found error if no rows were returned
    header("HTTP/1.0 404 Not Found");
    echo json_encode(array('error' => 'Movie/TV show not found'));
}
