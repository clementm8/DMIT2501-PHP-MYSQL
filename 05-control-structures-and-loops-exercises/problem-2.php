<?php
// ## Problem 2

// Write a program that takes a numerical value and prints its multiplication table.
$limit= 12;
$input= 5;
for ($i = 1; $i <= $limit; $i++) {
    $product= $i * $input;
    echo"<p>$input * $i = $product</p>";
}