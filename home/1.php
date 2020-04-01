<?php

$link=mysqli_connect("localhost","root","")
or die ("Non");

mysqli_select_db($link,"homee");

mysqli_query($link,"UPDATE workers set age=36 where name='Катя'")
or die ("нее");

$result= mysqli_query($link,"SELECT * from workers where name<>'Вася'  ") 
or die ("не удалось выполнить запрос");

echo "<table>";

while($row=mysqli_fetch_array($result,MYSQLI_BOTH)){
echo "<tr>";
echo "<td>".$row[0]."</td>";
echo "<td>".$row[1]."</td>";
echo "<td>".$row[2]."</td>";
echo "<td>".$row[3]."</td>";
echo "</tr>";
}

