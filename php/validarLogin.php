<?php
    // require("validarSesion.php");
    if(!isset($_POST['user'])) die("Error peticion denegada");
    
    $user = md5($_POST["user"]);
    $pass = md5($_POST["pass"]);
    

    require("cn.php");
    $sen = "SELECT * FROM users WHERE user='$user' and password='$pass'";
    $val = mysqli_query($con,$sen);
    $fil = mysqli_num_rows($val);
    
    session_start();
    if($fil>0){
        $_SESSION['value']=$_POST["user"];
    } else {
        $_SESSION['value']="0";
    } 

    echo $fil;

    mysqli_close($con);
?>