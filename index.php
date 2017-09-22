<?php
$user = mysqli_connect('localhost', 'root', '', 'php_task');


?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="main.css">
    <title>Chat Login, yo-yo-yo</title>
</head>
<body>
<form action="index.php" method="post" id="login-form">
    <h3>Your chat name:</h3>
    <input type="text" name="login" id="login">
    <input type="submit" name="submit" value="Ok" id="submit">
</form>
<script>

<?php

$login = $_POST['login'];

if (isset($_POST['submit']) && !empty($login)){
    $check_user_querrry = "SELECT * FROM chat_user WHERE name = '".$login."'";
    $adduser = mysqli_query($user, $check_user_querrry);
    $user_value = mysqli_fetch_assoc($adduser);

    if ($user_value['name'] != $login){
        $querry = "INSERT INTO chat_user (id, name, status) VALUES (NULL, '$login' , '1')";
        $adduser = mysqli_query($user, $querry);}
    else{

        $offline = "UPDATE chat_user SET status = 0";
        $user_offline = mysqli_query($user, $offline);

        $online = "UPDATE chat_user SET status = 1 WHERE name = '".$login."'";
        $online_user = mysqli_query($user, $online);
    }

    echo ('let checked = true;');
}else{
    echo ('let checked = false;');
}

  ?>

    if (!checked){
        let inputLogin = document.getElementById('login');
        inputLogin.setAttribute('placeholder', 'Enter login please...');
    }else {
        document.location.href = 'chat_page.php';
    }

</script>
</body>
</html>