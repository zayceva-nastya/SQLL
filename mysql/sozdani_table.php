<?php
$servername="zaycevanastya";
$username="root";
$password="";
$dbname="testbd";

$conn = new mysqli ($servername, $username, $password, $dbname);

if($conn->connect_error){
    echo "Connection failed:".$conn->connect_error;

}

$sql="CREATE TABLE users(
    name VARCHAR (30) NOT NULL,
    surname VARCHAR (30) NOT NULL,
    password VARCHAR (30) NOT NULL)";
    
    if($conn->query($sql)===TRUE){
        echo "Yes";
    }else{
        echo "No:".$conn->connect_error;
    }

?>