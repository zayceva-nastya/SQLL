<?php
include 'connect.php';

$del="DELETE FROM gbook WHERE gbook.id=$_GET[id]";

mysqli_query($link,$del);

header('location: show.php');