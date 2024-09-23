<?php

if (isset($_POST["submit"])) {
    $nums = array();

    for ($i = 1; $i <= 5; $i++) {
        $nums[] = $_POST["num{$i}"];
    }
    var_dump(value: $nums);
    sort(array: $nums);
    var_dump(value: $nums);
    $count = count(value: $nums);
    echo "there are $count numbers entered";
    $sum = array_sum(array: $nums);
    echo "the sum of the numbers is $sum";

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
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <?php for ($i = 0; $i <= 5; $i++): ?>
            <div class="mb-3">
                <label for="num<?= $i ?>">Enter number <? $i ?></label>
                <input type="text" id="num<?= $i ?>" name="num<?= $i ?>">
            </div>
        <?php endfor ?>
        <input type="submit" value="Calculate" name="submit">
    </form>
</body>

</html>