<?php
    session_start();
    
    if(!isset($_SESSION['value']) || $_SESSION['value']==="0") die("Error peticion denegada");

    include("cn.php");
    $user= md5($_SESSION['value']);
    $sen= "SELECT * FROM users WHERE user='$user'";
    
    $res = mysqli_query($con, $sen);
    while($row=mysqli_fetch_assoc($res)) {
        $_SESSION['name']=$row["name"];
        $_SESSION['user']=$row["name"];
    }
    // echo $_SESSION['user'];
    header("location:../pages/dashboard.php");
    $_SESSION['value']=="0";
?>