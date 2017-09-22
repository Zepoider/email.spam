<?php
$user = mysqli_connect('localhost', 'root', '', 'php_task');

$message = $_POST['chat_enter'];
$check_user_querrry = "SELECT * FROM chat_user WHERE status = '1'";
$adduser = mysqli_query($user, $check_user_querrry);
$user_value = mysqli_fetch_assoc($adduser);
$id_user = $user_value['id'];


if (isset($_POST['write']) && !empty($message)){

    $add_message_querry = "INSERT INTO message (id, message, user_id, time) VALUES (NULL,'$message' , '$id_user' , CURRENT_TIMESTAMP )";
    $add_message = mysqli_query($user, $add_message_querry);
}

if (isset($_POST['exit']))
{
    $offline = "UPDATE chat_user SET status = 0";
    $user_offline = mysqli_query($user, $offline);
    header('location: index.php');
    die();
}

$chat_draw_querry = "SELECT * FROM message";
$chat_draw = mysqli_query($user, $chat_draw_querry);

while ($chat_draw_array = mysqli_fetch_assoc($chat_draw))
{
    $id_message = $chat_draw_array['user_id'];
    $check_user_querrry = "SELECT * FROM chat_user WHERE id = '".$id_message."'";
    $adduser = mysqli_query($user, $check_user_querrry);
    $user_value = mysqli_fetch_assoc($adduser);
    $name_user = $user_value['name'];
    echo '<p>'.$name_user.'('.$chat_draw_array['time'].'): '.$chat_draw_array['message'].'</p>';
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="main.css">
</head>
<body>
<form action="chat_page.php" method="post" id="chat-form">
    <input type="text" name="chat_enter" id="chat-enter">
    <input type="submit" name="write" value="Write" id="chat-submit">
    <input type="submit" name="exit" value="Exit" id="chat-exit">
</form>

</body>
</html>
