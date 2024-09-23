<?php

$num1= 5;
$num2= '5';
$sum= $num1 + $num2;
echo "<p>The sum of $num1 and $num2 is $sum</p>";
define("GST",5);
$gst= $sum * (GST/100);
echo "gst is $gst"

?>