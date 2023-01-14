<?php
    require("../php/validarSesion.php");
    require("./validarAdmin.php");

    function validarUser($con,$user){
        $sen = "SELECT name FROM users WHERE user='$user'";
        $res = mysqli_query($con,$sen);
        $fil = mysqli_num_rows($res);
        if($fil>0) die("Nombre de Usuario ya registrado");
    }

    if(!isset($_POST['tipo'])) die("Error peticion denegada");
    require("./cn.php");

    if($_POST['tipo']=="eliminar"){
        if(!isset($_POST['ide'])) die("Peticion Denegada");
            $ide = $_POST['ide'];
        $sen ="DELETE FROM users WHERE id = $ide";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al eliminar el usuario");
        echo 1;

    } else if($_POST['tipo']=="update"){
        if(!isset($_POST['campo']) ||
            !isset($_POST['valor']) ||
            !isset($_POST['ide'])) die("Peticion Denegada");

        $campo = $_POST['campo'];
        $valor = $_POST['valor'];
        $ide = $_POST['ide'];
        $valorB = md5($valor);


        if($campo=="nombre"){
            $sent ="name='$valor'";
        }else if($campo=="user"){
            validarUser($con,$valorB);
            $sent ="user='$valorB',subLogin='$valor'";
        }else if($campo=="pass"){
            $sent ="password='$valorB',subPass='$valor'";
        }
        $sen = "UPDATE users SET $sent WHERE id='$ide'";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al agregar el usuario");
        echo 1;

    } else if($_POST['tipo']=="agregar"){
        if(!isset($_POST['nombre']) ||
           !isset($_POST['usuario']) ||
           !isset($_POST['contra'])) die("Peticion Denegada");
        $nombre = $_POST['nombre'];
        $usuario = $_POST['usuario'];
        $usuarioB = md5($usuario);
        $contra = $_POST['contra'];
        $contraB = md5($contra);

        validarUser($con,$usuarioB);

        $sen = "INSERT INTO users 
                (user, password, name, subLogin, subPass, historial, condonacion, con) VALUES 
                ('$usuarioB', '$contraB', '$nombre', '$usuario', '$contra', '', '', '')";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al agregar el usuario");
        echo 1;


    } else if($_POST['tipo']=="descuentos"){
        if(!isset($_POST['desEne']) ||
           !isset($_POST['desFeb']) ||
           !isset($_POST['desMar'])) die("Peticion Denegada");
        $desEne = $_POST['desEne'];
        $desFeb = $_POST['desFeb'];
        $desMar = $_POST['desMar'];
        $sen ="UPDATE descuentos SET valor = CASE id
                WHEN 1 THEN '$desEne'
                WHEN 2 THEN '$desFeb'
                WHEN 3 THEN '$desMar'
            END
            WHERE id IN (1,2,3)";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al actualizar los descuentos");
        echo 1;


    } else if($_POST['tipo']=="cuota"){
        if(!isset($_POST['cuota']) ||
           !isset($_POST['fecha']) ) die("Peticion Denegada");
           $cuota = $_POST['cuota'];
           $fecha = $_POST['fecha'];
        $sen = "INSERT INTO cuotas (cuota,fecha)VALUE('$cuota','$fecha')";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al actualizar las cuotas");
        echo 1;

    } else if($_POST['tipo']=="validacion"){
        if(!isset($_POST['actual']) ||
           !isset($_POST['nueva'])) die("Peticion Denegada");
        $actual = $_POST['actual'];
        $nueva = $_POST['nueva'];
        $actualB= md5($actual);
        $nuevaB= md5($nueva);

        $sen = "SELECT condonacion FROM users WHERE condonacion='$actualB' LIMIT 2";
        $res = mysqli_query($con,$sen);
        $fil = mysqli_num_rows($res);
        if($fil==0) die("Clave actual Invalida");

        $sen ="UPDATE users SET condonacion = CASE id
                WHEN 1 THEN '$nuevaB'
                WHEN 2 THEN '$nuevaB'
            END, con = CASE id
                WHEN 1 THEN '$nueva'
                WHEN 2 THEN '$nueva'
            END
            WHERE id IN (1,2)";
        $res = mysqli_query($con,$sen);
        if(!$res) die("Error al actualizar los descuentos");

        echo 1;

    }
?>