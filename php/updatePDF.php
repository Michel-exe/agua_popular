<?php
    include("./validarSesion.php");
    if(!isset($_POST['arr'])) die("Hubo un error inesperado");
    
    // $arr = array('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5);
    // echo json_encode($arr);
    
    // header("Content-type: application/json");
    
    $arr = $_POST['arr'];
    // $arr = json_encode($arr);
    // $arr= json_decode($arr, true);
    // echo $arr;
    
    $newArray = explode('},{',$arr);
    $newArray[0]=substr($newArray[0],2);
    $newArray[count($newArray)-1]=substr($newArray[count($newArray)-1],0 ,-2);
    
    $daId=array();
    $daDa=array();
    for ($a=0; $a <count($newArray) ; $a++) { 
        $val=explode('"',$newArray[$a]);
        array_push($daDa,$val[7]);
        array_push($daId,$val[3]);
    }
    include("./cn.php");
    // $sen ="UPDATE `users` SET `subLogin` = 'admin', `subPass` = '12345' WHERE `users`.`id` = 2"
    // echo count($newArray);
    // echo $newArray[0]
    
    // $arr = json_decode($_POST['arr']);
    // echo strval($arr);

    // echo gettype($arr);

    // foreach ( $arr as $va ) {
    //     echo $campo.'='.$va;
    // }
