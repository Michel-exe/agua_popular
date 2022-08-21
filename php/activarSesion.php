<?php
    session_start();
    
    if(!isset($_SESSION['value']) || $_SESSION['value']==="0") die("Error peticion denegada");

    include("cn.php");
    $user= md5($_SESSION['value']);
    $sen= "SELECT * FROM users WHERE user='$user'";
    
    $resultado = mysqli_query($con, $sen);
    while($row=mysqli_fetch_assoc($resultado)) {
        $_SESSION['name']=$row["name"];
    }
    header("location:../pages/dashboard.php");
    $_SESSION['value']=="0";
?>