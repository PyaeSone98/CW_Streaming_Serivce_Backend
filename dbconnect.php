<?php
$db = mysqli_connect("localhost","root","","code-worms_db");

//check connection
if (mysqli_connect_error()) {
    echo "Failed to connect to MYSQL".mysqli_connect_error();

}
