<?php
$servername= "zaycevanastya";
$username= "root";
$password= "";

$conn = new mysqli($servername, $username, $password);

if($conn->connect_error){
    die ("Connection failed");
}
echo "Connection successfully";
?>

//процедурный подход

<?php
$servername= "zaycevanastya";
$username= "root";
$password= "";

$conn = mysqli_connect($servername, $username, $password);

if(!$conn){
    die ("Connection failed");
}
echo "Connection successfully";
?>

<?php
$servername= "zaycevanastya";
$username= "root";
$password= "";
 
try{
$con= new PDO("mysql:host=$servername;dbname=new_bd",$username,$password);

echo "Connection successfully";
}
catch (PDOException $e){
echo "Connection failed:".$e->getMessage();
}