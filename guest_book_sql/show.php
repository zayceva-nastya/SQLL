<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
include 'connect.php';
    $result = mysqli_query(
        $link,
        "Select * From gbook"
    ) or die("Не удалось выполнить запрос");

    echo "<center><table border='2'>\n";

    while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
        echo "<tr>";
        echo "<td><a href='del.php?id=$row[0]'>" . $row[0] . "</td>";
        echo "<td>" . $row[1] . "</td>";
        echo "<td>". $row[2] . "</td>";
        echo "</tr>";
    }
    echo "</table></center>\n";

    mysqli_free_result($result);

    mysqli_close($link);

    ?>
    <form action="rec.php" method="post">
        <textarea name="text" cols="30" rows="10"></textarea><br>
        <input type="text" name="name"> <br>
        <input type="submit" value="OK">
    </form>
</body>

</html>