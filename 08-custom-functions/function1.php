<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        function generic_welcome(): void {
            echo"<p<Welcome All</p>";
            echo"<p> The current date is";
            echo date("l jS \of F Y h:i:s A");
            echo "</p>";
        }

        function welcome_by_name($name){
            $name= strtoupper($name);
            echo "<p> Welcome $name </p>;";
        }

        function positive_number($num){
            if (is_numeric($num)&& $num){
                return true;
            }
            else{
                return false;
            }
        }
        
        function do_math($a, $b){
            $sum=0;
            if(positive_number($a)){
                $sum += $a;
            {
                $sum += $b;
            }
            return $sum;
        }}    
    
        if(positive_number($num)){
            echo "Its positive";
        }
        else{
            echo "Its negative";
        }
    ?>

    <header>
        <div class="welcome">
            <?php generic_welcome(); ?>
        </div>
    </header>
    <main>
        <?php 
        $my_name= "Jayjay";
        welcome_by_name($my_name); 

        $x= 10;
        $y= 2;
        $total= do_math($x,$y);
        echo "The total is $total";

        ?>
    </main>
</body>
</html>