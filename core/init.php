<?php
// Executed for every refresh of the chat

session_start();
define('LOGGED_IN', true);

require_once 'classes/Core.php';
require_once 'classes/Chat.php';
