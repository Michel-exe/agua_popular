<?php
    include("./validarSesion.php");
    if(!isset($_POST['sub'])) die("Peticion Denegada");
    
    $sub = md5($_POST['sub']);
    
    include("./cn.php");
    $sen = "SELECT condonacion FROM users WHERE condonacion='$sub' ";
    // echo $sen;
    $val = mysqli_query($con,$sen);
    $fil = mysqli_num_rows($val);

    echo $fil;

?>