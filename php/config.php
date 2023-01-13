<?php
    $conn = mysqli_connect("localhost", "root", "", "chatApp");
    if(!$conn){
        echo "Database connected". mysqli_connect_error();
    }