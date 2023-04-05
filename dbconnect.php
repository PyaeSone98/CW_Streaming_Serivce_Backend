<?php
$db = mysqli_connect("localhost","root","","cw_streaming");

//check connection
if (mysqli_connect_error()) {
    echo "Failed to connect to MYSQL".mysqli_connect_error();

}
