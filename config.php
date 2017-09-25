<?php

$user = mysqli_connect('localhost', 'root', '', 'php_task');

if(!$user) {
    echo 'Cannot connect to DB';
    exit();
}
?>