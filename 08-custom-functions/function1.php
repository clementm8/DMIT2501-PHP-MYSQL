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
            echo "<p> Welcome $name </p>;";
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
        welcome_by_name($my_name); ?>
    </main>
</body>
</html>