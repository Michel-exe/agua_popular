<?php
    session_start();
    
    if(!isset($_SESSION['value']) || $_SESSION['value']==="0") die("Error peticion denegada");
    
    include ("cn.php");

    function funciones($con,$where){
        $sen= "SELECT * FROM users $where";
        $res = mysqli_query($con, $sen);
    }
?>