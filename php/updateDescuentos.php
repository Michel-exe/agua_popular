<?php
    require("./validarSesion.php");
    require("./validarAdmin.php");
    require("./cn.php");

    if(!isset($_POST['desEne']) ||
       !isset($_POST['desFeb']) ||
       !isset($_POST['desMar'])) die("Peticion Denegada");
    
    $desEne = $_POST['desEne'];
    $desFeb = $_POST['desFeb'];
    $desMar = $_POST['desMar'];

    echo $desEne."\n";
    echo $desFeb."\n";
    echo $desMar."\n";

    $sen = "UPDATE descuentos SET valor = '$desEne' WHERE id = 1";
    $res = mysqli_query($con,$sen);
    if(!$res) die("Error al actualizar mes Enero");

    $sen = "UPDATE descuentos SET valor = '$desFeb' WHERE id = 2";
    $res = mysqli_query($con,$sen);
    if(!$res) die("Error al actualizar mes Febrero");

    $sen = "UPDATE descuentos SET valor = '$desMar' WHERE id = 3";
    $res = mysqli_query($con,$sen);
    if(!$res) die("Error al actualizar mes Marzo");

    echo 1;

?>