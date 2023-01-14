<?php
require './cn.php';
if(isset($_POST['sen'])) {
    $sen = $_POST['sen'];
    echo $sen."\n";
    // $sen="UPDATE tomas SET ultFecha = '1/01/2023', concepto = 'MAR 2014 - ENE 2023' WHERE numRegistro = 1466";
    $res = mysqli_query($con,$sen);
    if(!$res) die("Hubo un error");
    die("echo");
} else{
    echo "No entro";
}
?>