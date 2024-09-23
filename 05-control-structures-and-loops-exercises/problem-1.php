<!-- ## Problem 1

Write a program that takes a numerical value and checks to see whether it's positive, negative, zero, or not a number. -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
// $number = 5;
// $number = -6;
$number = 0;
// $number = "string";

// if (is_numeric($number)) {
//     if ($number == 0) {
//         $message = "You entered 0";
//     } else {
//         if ($number > 0) {
//             $message = "You entered a variable greater than 0";
//         }
//         else {
//             if ($number < 0) {
//                 $message = "You entered a variable less than 0";
//             }
//         }
//     }
// } else {
//     $message = "Sorry that is not a number. You entered: $number";
// }

switch ($number) {
    case 0:
        $message = "You entered a variable greater than 0";
        break;

    case $number < 0:
        $message = "You entered a variable less than 0";
        break;

    case $number > 0:
        $message = "You entered a variable greater than 0";
        break;

    default:
        $message = "Sorry that is not a number. You entered: $number";
        break;
}

?>

<body>
    <div>
        <?= $message ?>
    </div>
</body>

</html>