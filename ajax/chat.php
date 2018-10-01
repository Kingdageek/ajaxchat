<?php
require_once "../core/init.php";

if (isset($_POST['method']) && !empty($_POST['method'])) {
    $method = trim($_POST['method']);
    $chat = new Chat;

    if ($method == 'fetch') {
        // fetch Messages and publish in message area
        $messages = $chat->fetchMessages();

        if (empty($messages)) {
            echo "There are currently no messages in the chat";
        } else {
            foreach ($messages as $message) {
?>
                <div class="message">
                    <a href="#"><?= $message['name'];?></a> says:
                    <p><?= $message['message'];?></p>
                </div>
<?php
            }
        }
    } elseif ($method == 'throw') {
        // save Message in db

    }
}