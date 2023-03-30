<?php

include 'dbconnect.php';

// Get the current date and subtract 30 days
$inactive_date = date('Y-m-d', strtotime('-30 days'));

// Update users whose last billing date is more than 30 days ago and billing_plan is still true
$stmt = $db->prepare('UPDATE users SET billing_plan = false WHERE last_billing_date <= ? AND billing_plan = true');
$stmt->execute([$inactive_date]);

?>
