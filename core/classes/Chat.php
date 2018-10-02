<?php
class Chat extends Core {
    public function fetchMessages() {
        // query db
        // return rows
        $sql = "SELECT `chats`.`message`, `users`.`name`, `users`.`id`
        FROM `chats` INNER JOIN `users` ON `chats`.`user_id`=`users`.`id` ORDER BY `chats`.`timestamp`";  
        return $this->query($sql);       
    }

    public function throwMessage($user_id, $message) {
        // Insert db
        $sql = "INSERT INTO `chats` (`user_id`, `message`, `timestamp`)
            VALUES (".(int)$user_id.", \"". $this->checkInput($message)."\", UNIX_TIMESTAMP())";
        $this->db->exec($sql);
    }

    public function checkInput($value) {
        $value = trim($value);
        $value = stripslashes($value);
        $value = htmlspecialchars($value);
        return $value;
    }
}