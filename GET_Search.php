<?php
include_once 'core.php';
include 'dbconnect.php';

$search_query = $_GET['query'];
$search_alike = "%" . $search_query . "%";

// Use prepared statement to prevent SQL injection
$stmt = $db->prepare("SELECT * FROM entity WHERE title LIKE ?");
$stmt->bind_param("s", $search_alike);

if ($stmt->execute()) {
  $result = $stmt->get_result();
  $movies = array();
  
  if(mysqli_num_rows($result) === 0) {
      echo json_encode(array('message' => 'Movie/tvshow not found'));
  } else {
      while ($row = $result->fetch_assoc()) {
        $movies[] = $row;
      }

      // Return JSON encoded array of movies
      echo json_encode($movies);
  }

} else {
  header("HTTP/1.0 500 Internal Server Error");
  echo json_encode(array('error' => 'Could not search movies or tvshows'));
}

$stmt->close();
$db->close();
