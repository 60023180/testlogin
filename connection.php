<?php 

    $conn = mysqli_connect ("localhost", "root", "123", "loginadminuser");

    if (!$conn) {
        die("Connection Failed: " . mysqli_error($conn));
    }
    
    //$servername = "localhost";
    //$username = "root";
    //$password = "123";
    //$dbname = "loginadminuser";

    //$conn = mysqli_connect("servername", "username", "password", "dbname");

    //if (!$conn) {
        //die("Connection Failed: " . mysqli_connect_error($conn));
    //}
?>