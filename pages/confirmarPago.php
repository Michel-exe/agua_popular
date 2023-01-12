<?php
    require("../php/validarSesion.php");

    if(!isset($_POST['nur'])) die("Peticion Denegada");


    require("../php/cn.php");
    $sen = 'SELECT numRecibo FROM pagos ORDER BY id DESC LIMIT 1';
    $res = mysqli_query($con,$sen);

    while ($row = mysqli_fetch_array($res)) {
        $numRec= (intval($row['numRecibo'])+1)."";
    }
    // echo $numRec."\n";
    $nur = $_POST['nur'];
    $fecHoy = $_POST['fecHoy'];
    $ultPag = $_POST['ultPag'];
    $descuento = $_POST['descuento'];
    $ultMes = $_POST['ultMes'];
    $cuota = $_POST['cuota'];
    $cobranza = $_POST['cobranza'];
    $conexion = $_POST['conexion'];
    $rezagos = $_POST['rezagos'];
    $recargos = $_POST['recargos'];
    $coperacion = $_POST['coperacion'];
    $anticipos = $_POST['anticipos'];
    $varios = $_POST['varios'];
    $condona = $_POST['condona'];
    $importT = $_POST['importT'];
    $fondoNR = $_POST['fondoNR'];
    $fecha = $_POST['fecha'];
    $user=  $_SESSION['user'];

    $sen ="INSERT INTO pagos (subId,numRegistro,fecha,numRecibo,mesPaga,ultMes,cuota,cobranza,conexion,rezagos,recargos,coperacion,anticipos,varios,condona,descuento,importT,fondoNR,usuarioMovimiento,fechaMovimiento)VALUES('00','$nur','$fecHoy','$numRec','$ultPag','$ultMes','$cuota','$cobranza','$conexion','$rezagos','$recargos','$coperacion','$anticipos','$varios','$condona','$descuento','$importT','0','$user','$fecha')";

    // echo $descuento."\n";

    $val=mysqli_query($con,$sen);
    if(!$val) die("Error al hacer el pago");

    $sen = "UPDATE tomas SET ultRecibo = '$numRec', concepto='$ultPag',ultFecha='$ultMes',ultImporte='$importT',cuota='$cuota' WHERE numRegistro = '$nur'";
    $val=mysqli_query($con,$sen);
    if(!$val) die("Error al Actualizar");
    
    echo 1;

?>