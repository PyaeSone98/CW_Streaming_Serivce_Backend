<?php
include 'dbconnect.php';
include_once 'core.php';
include_once 'decodetoken.php';

$token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpc3N1ZXIiLCJhdWQiOiJsb2NhbGhvc3Q6MzAwMCIsImlhdCI6MTY4MDE3NzU0MCwibmJmIjoxNjgwMTc3NTQwLCJleHAiOjE2ODAxODgzNDAsInN1YiI6IjEyMzQ1Njc4OTAiLCJlbWFpbCI6ImNvZGV3b3JtczIzQGdtYWlsLmNvbSIsInVzZXJfaWQiOjMwfQ.4EHjQ1PDazEGD2BZPc9I4bVBpngZCfxgH_XmaZSoKx4";
$user_id = decodeToken($token);

echo json_encode($user_id);

// Use the user ID in your code
