<?php
include_once 'core.php';
include 'decodetoken.php';
include 'dbconnect.php';

$headers = apache_request_headers();
$token = $headers['token'];


$decodedToken = decodeToken($token);
$user_id = $decodedToken;

try {
    // Set billing plan to true for current user
    $stmt = $db->prepare('UPDATE users SET billing_plan = true, last_billing_date = NOW() WHERE id = ?');
    $stmt->execute([$user_id]);

    echo json_encode(array('success' => true));
} catch (PDOException $e) {
    // Error handling
    echo json_encode(array('success' => false, 'message' => $e->getMessage()));
}
?>
