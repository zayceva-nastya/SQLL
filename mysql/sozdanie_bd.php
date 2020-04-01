<?php
$servername="zaycevanastya";
$username="root";
$password="";

$connect= new mysqli($servername,$username,$password);

if ($connect->connect_error){
    die ("Conection failed");
}
$sql='CREATE DATABASE testbd';
if($connect->query($sql)===TRUE){
    echo "БД создана успешно";
}
else{
    echo "NO".$connect->error;
}
?>


