<?php

$conn = new mysqli('localhost','root','','dcs');

if(!$conn){
    die(mysqli_error($conn));
}


?>