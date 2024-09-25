<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Final Grade Calculator</title>
</head>

<body>
    <h1>Final Grade Calculator</h1>
    <p>Hi there! Welcome to the Final Grade Calculator.</p>
    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
        <label for="numCourses">How many assignments have you completed so far?</label>
        <input type="text" id="numCourses">
        <input type="submit" value="Generate Rows" name="numCoursesSubmit">
    </form>
    <?php
    if (isset($_POST['numCoursesSubmit'])) {
        echo '<form action=' . $_SERVER['PHP_SELF']. 'method="GET">'.
              '<input type="text" name="new_input">'.
              '<input type="submit" value="Submit">'.
          '</form>';
    }
    ?>

</body>

</html>