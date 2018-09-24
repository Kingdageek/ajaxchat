<?php 
session_start();
$_SESSION['user'] = (int) ($_GET['user'] ?? 0);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AJAX CHAT</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="chat">
        <div class="messages">
        </div>
        <textarea name="" id="" cols="30" rows="4" class="entry" placeholder="Type here and hit Return. Use Shift + Return for a new line.">
        </textarea>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/chat.js"></script>
</body>
</html>