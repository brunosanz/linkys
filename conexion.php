<?php
    $host="localhost";
    $user="root";
    $password="";
    $db="shortcut";
    $con = new mysqli($host,$user,$password,$db);
    if ($con->connect_error) {
        die("<br>Error!");
        exit();
    }else{
        $con->query("SET NAMES 'utf8'");
    }

?>