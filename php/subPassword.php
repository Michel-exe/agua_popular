<?php
    require("./validarSesion.php");
    require("./validarAdmin.php");
    if(!isset($_POST['sub']) || !isset($_POST['type'])) die("Peticion Denegada");
    
    $sub = md5($_POST['sub']);
    $type = $_POST['type'];
    
    require("./cn.php");
    $sen = "SELECT condonacion,password FROM users WHERE $type='$sub'";
    // echo $sen;
    $val = mysqli_query($con,$sen);
    $fil = mysqli_num_rows($val);

    echo $fil;
mysqli_close($con);
?>