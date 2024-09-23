<?php

$username= isset($_GET['username']) ? $_GET['username'] :'YOUR NAME';
$job= isset($_GET['job']) ? $_GET['job'] :'Web Developer';
$phone= isset($_GET['phone']) ? $_GET['phone'] :'123 456 6789';
$email= isset($_GET['email']) ? $_GET['email'] :'youremail@email.com';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav>
        <a href="read.php?name=JJ&job=badmon">JJ Badmon</a>
        <a href="read.php?name=JJ&job=gudmon">JJ Gudmon</a>
        <a href="form.php">Form Page</a>
</nav>
    <main>
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
        <h2>Fill in your name</h2>
        <p>To generate your own business card, fill out the information below. When you are finished, press 'Ready!' to see the final result</p>
        
        <div class="form-control">
            <input type="text" id="username" name="username" value="<?= $username; ?>">
            <label for="username">Username</label>
        </div>

        <div class="form-control">
            <input type="text" id="job" name="job" value="<?= $job; ?>">
            <label for="job">Job</label>
        </div>

         <div class="form-control">
            <input type="text" id="phone" name="phone" value="<?= $phone; ?>">
            <label for="phone">Phone</label>
        </div>

        <div class="form-control">
            <input type="text" id="email" name="email" value="<?= $email; ?>">
            <label for="email">Email</label>
        </div>
        <input type="submit" value="Ready!" name="submit">
    </form>

    <section class="card">
        <div class="front-side">
            <div class="color-grid">
                <div class="black">
                    <div class="red1">
                        <div class="red2">
                            <div class="green"></div>
                        </div>
                        <div class="info-grid">
                            <div class="name">
                                <h2><?= $username; ?></h2>
                                <p><b><?= $job; ?></b></p>
                            </div>
                            <div class="phoneNo">
                                <img src="img/phone.svg" alt="phone icon">
                                <p><?= $phone; ?></p>
                            </div>
                            <div class="emailId">
                                <img src="img/computer.svg" alt="computer icon">
                                <p><? $email; ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </main>
</body>
</html>