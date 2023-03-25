<?php
include_once('core.php');
include('dbconnect.php');


//Get all catergories
$categories_query = "SELECT * FROM categories";
$categories_result = $db->query($categories_query);

$check_movie=0;
// Loop through each category and get its associated movies
$categories = array();
while ($category = $categories_result->fetch_assoc()) {
  $category_id = $category['id'];
  $category_name = $category['name'];
    
  //Get movies for this category
  $tvshow_query = "SELECT * FROM entity WHERE category_id= $category_id AND is_movie=$check_movie";
  $tvshow_result = $db->query($tvshow_query);

  $tvshows = array();
  while ($tvshow = $tvshow_result->fetch_assoc()) {
    $tvshows[] = $tvshow ; 
  }

  $movie_categories[] = array (
    'id' =>$category_id,
    'name' => $category_name,
    'tvshows' => $tvshows
  );


}

$db->close();

echo json_encode($movie_categories);

?>


