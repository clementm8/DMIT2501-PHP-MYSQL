<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    function create_safe_filename($word)
    {
        $word = strtolower($word);
        $word = trim($word);
        $word = str_replace(" ", "_", $word);
        $word = substr($word, 0, 20);
        $word = $word . time() . ".html";
        return $word;
    }

    if(isset($GET['word'])){
        $word= $_GET['word'];
    }
    ?>
    

    <form action="<? $_SERVER['REQUEST_URI'] ?>"></form>
    <label for="word">Enter the word for a filename</label>
    <input type="text" id="word" name="word" value="<?= $word; ?>">
    </form>
    <?php
    if($word){
        echo create_safe_filename($word);
    }
    
    ?>
</body>

</html>