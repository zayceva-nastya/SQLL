<?php
$link = mysqli_connect(
    "localhost",
    "root",
    ""
)
    or die("Не удалось соединться с сервером");

mysqli_select_db(
    $link,
    "book"
)
    or die("Не удалось выбрать БД");

// print_r($_POST);
if ((!empty($_POST['text']) && (!empty($_POST['name'])))) {
    $result = mysqli_query(
        $link,
        "INSERT INTO `gbook` VALUES (NULL,'$_POST[text]','$_POST[name]')"
    );
    header('Location: 27.03.php');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php

    $result = mysqli_query(
        $link,
        "Select * From gbook"
    ) or die("Не удалось выполнить запрос");

    echo "<center><table border='2'>\n";

    while ($row = mysqli_fetch_array($result, MYSQLI_BOTH)) {
        echo "<tr>";
        echo "<td>" . $row[0] . "</td>";
        echo "<td>" . $row[1] . "</td>";
        echo "<td>" . $row[2] . "</td>";
        echo "</tr>";
    }
    echo "</table></center>\n";

    mysqli_free_result($result);

    mysqli_close($link);

    ?>
    <form action="" method="post">
        <textarea name="text" cols="30" rows="10"></textarea><br>
        <input type="text" name="name"> <br>
        <input type="submit" value="OK">
    </form>
</body>

</html>