<?php
if (isset($_POST["multiplication_table_submit"])) {
    $to_multiply = $_POST["to_multiply"];
    $limit = $_POST["limit"];
    for ($i = 1; $i <= $limit; $i++) {
        $product = $i * $to_multiply;
        $problem2 .= "<p>$to_multiply * $i = $product</p>";
    }
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
    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
        <label for="number" id="">Value to check</label>
        <input type="text" id="number" name="number">

        <input type="submit" value="Check it!" name="check-number-submit">
    </form>
    

    <!-- ## Problem 1
Write a program that takes a numerical value and checks to see whether it's positive, negative, zero, or not a number. -->

    <?php
    if (isset($_POST['check-number-submit'])) {
        $number = $_POST['number'];
        echo $number;
        if (is_numeric($number)) {
            if ($number == 0) {
                $message = "You entered 0";
            } else {
                if ($number > 0) {
                    $message = "You entered a variable greater than 0";
                } else {
                    if ($number < 0) {
                        $message = "You entered a variable less than 0";
                    }
                }
            }
        } else {
            $message = "Sorry that is not a number. You entered: $number";
        }
        echo "<div class='message'><p>$message</p></div>";
    }
    ?>
    <!-- ## Problem 2
Write a program that takes a numerical value and prints its multiplication table.-->

    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
        <label for="to_multiply" id="">Value to multiply</label>
        <input type="text" id="to_multiply" name="to_multiply">
        <input type="submit" value="Check it!" name="multiplication_table_submit">
        <label for="limit" id="">Limit value to multiply</label>
        <input type="text" id="limit" name="limit">
    </form>

    <?php if (isset($problem2)) : ?> 
        <div class="message">
            <p><?= $problem2 ?></p>
        </div>
    <?php endif ?>

</body>

</html>