<?php
include_once 'core.php';
include 'dbconnect.php';

// Validate and sanitize user input
$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);


if ($id === false || $id === null) {
    // Send a 400 Bad Request error if ID is missing or invalid
    header("HTTP/1.0 400 Bad Request");
    echo json_encode(array('error' => 'Invalid entity ID'));
    exit();
}

$checkmovie_query = "SELECT is_movie FROM entity WHERE id = ?";
$checkmovie_stmt = $db->prepare($checkmovie_query);
$checkmovie_stmt->bind_param('i', $id);
$checkmovie_stmt->execute();
$checkmovie_result = $checkmovie_stmt->get_result();

if ($checkmovie_result->num_rows > 0) {
    $check = $checkmovie_result->fetch_assoc();
    $checkmovie = $check['is_movie'];

    if ($checkmovie == 1) {
        $get_movie_sql = "SELECT videos.*, categories.name AS category_name FROM videos JOIN categories ON videos.category_id = categories.id WHERE videos.entity_ID = ?";
        $get_movie_stmt = $db->prepare($get_movie_sql);
        $get_movie_stmt->bind_param('i', $id);
        $get_movie_stmt->execute();
        $get_movie_result = $get_movie_stmt->get_result();

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
        $get_tvshow_sql = "SELECT episodes.*, categories.name AS category_name FROM episodes JOIN categories ON episodes.category_id = categories.id WHERE episodes.entity_ID = ?";
        $get_tvshow_stmt = $db->prepare($get_tvshow_sql);
        $get_tvshow_stmt->bind_param('i', $id);
        $get_tvshow_stmt->execute();
        $get_tvshow_result = $get_tvshow_stmt->get_result();

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

$db->close();
