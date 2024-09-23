<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $username= isset($_GET['name']) ? $_GET['name'] :'YOUR NAME';
        $job= isset($_GET['job']) ? $_GET['job'] :'Web Developer';
        echo "Name is $username and job is $job"
    ?>
</body>
</html>