<?php
include_once 'core.php';
session_start();
include 'dbconnect.php';

$id = $_SESSION['user_id'];

try {
    // Set billing plan to true for current user
    $stmt = $db->prepare('UPDATE users SET billing_plan = true, last_billing_date = NOW() WHERE id = ?');
    $stmt->execute([$id]);

    echo json_encode(array('success' => true));
} catch (PDOException $e) {
    // Error handling
    echo json_encode(array('success' => false, 'message' => $e->getMessage()));
}
?>
