<?php
include_once ('core.php');
include('dbconnect.php');


// Get all categories
$categories_query = "SELECT * FROM categories";
$categories_result = $db->query($categories_query);

// Loop through each category and get its associated movies
$categories = array();
while ($category = $categories_result->fetch_assoc()) {
  $category_id = $category['id'];
  $category_name = $category['name'];

  // Get entities for this category
  $entities_query = "SELECT * FROM entity WHERE category_id = $category_id";
  $entities_result = $db->query($entities_query);

  // Store the entities in the category array
  $entities = array();
  while ($entity = $entities_result->fetch_assoc()) {
    $entities[] = $entity;
  }

  $categories[] = array(
     'id' => $category_id,
    'name' => $category_name,
    'entities' => $entities
  );
}

// Close database connection
$db->close();

// Return the categories and movies as JSON

echo json_encode($categories);
?>
