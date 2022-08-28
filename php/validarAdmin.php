<?php
// echo $_SESSION['id'].'<br>';
// echo gettype($_SESSION['id']).'<br>';
// echo intval($_SESSION['id']).'<br>';
// echo getType(intval($_SESSION['id'])).'<br>';

// echo $_SESSION['admin'] . "Hola";
// echo boolval($_SESSION['admin']) . " bol"  ;

include("./validarSesion.php");

if($_SESSION['admin']=="false") header("location:../pages/userDenied.php");
?>