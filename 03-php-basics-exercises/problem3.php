<?php

$page_title= "Problem 3";
include "inc/header.php"; ?>

<h1> Problem 3</h1>

<?php
$number = 1234;
$sum= 0;
$temp= 0;
$sum= $number % 10;
echo 'Current sum is ' . $sum;
$temp= intdiv($number, 10);
echo ' Temp is ' . $temp;

//Loop method
$sum= 0;
while ($number % 10 > 0) {
    # code...
    $temp= $number %10;
    $sum += $temp;
    $number /=10;
}

echo " The total is $sum";


?>

<? include "inc/footer.php"; ?>