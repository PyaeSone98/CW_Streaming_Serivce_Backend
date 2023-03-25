<?php
include_once('core.php');
include('dbconnect.php');


//Get all catergories
$categories_query = "SELECT * FROM categories";
$categories_result = $db->query($categories_query);

$check_movie=1;
// Loop through each category and get its associated movies
$categories = array();
while ($category = $categories_result->fetch_assoc()) {
  $category_id = $category['id'];
  $category_name = $category['name'];
    
  //Get movies for this category
  $movies_query = "SELECT * FROM entity WHERE category_id= $category_id AND is_movie=$check_movie";
  $movies_result = $db->query($movies_query);

  $movies = array();
  while ($movie = $movies_result->fetch_assoc()) {
    $movies[] = $movie ; 
  }

  $movie_categories[] = array (
    'id' =>$category_id,
    'name' => $category_name,
    'movies' => $movies
  );


}

$db->close();

echo json_encode($movie_categories);

?>


