<?php
    include("../php/validarSesion.php");
    
    if(!isset($_POST['ide']) || !isset($_POST['opc'])) die("Recurso no encontrado");
    include("cn.php");

    $nur = $_POST['ide'];
    $opc = $_POST['opc'];
    
    try {
        $sen = "SELECT * FROM general WHERE $opc LIKE '%$nur%' LIMIT 10";
        $res = mysqli_query($con, $sen);
        if(!$res) {
            die('Query Error' . mysqli_error($con));
          }
        
        if(!$res) die('Nur no existente');
    
        $json = array();
        while($row = mysqli_fetch_array($res)) {
          $json[] = array(
            'n' => $row['nur'],
            'no' => $row['nombre'],
            'a' => $row['apellido'],
            'id' => $row['id']
          );
        }
        $jsonstring = json_encode($json);
        echo $jsonstring;
    } catch (\Throwable $th) {
        echo $th;
    }


?>