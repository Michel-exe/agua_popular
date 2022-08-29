<?php
    include("../php/validarSesion.php");
    include("../php/cn.php");
    
    if(!isset($_GET['ide']) || !isset($_GET['opc'])) die("Recurso no encontrado");

    $nur = $_GET['ide'];
    $opc = $_GET['opc'];

    $sen = "SELECT * FROM general WHERE $opc = '$nur'";
    $res = mysqli_query($con, $sen);
    
    if(!$res) die('Nur no existente');
    $c =0;
    // $json = array();
    while($row = mysqli_fetch_array($res)) {
        $tab_nombre = $row['nombre'];
        $tab_nur = $row['nur'];
        $tab_fecha = $row['fecha'];
        $tab_lastMes = $row['lastMes'];
        $tab_cuota = $row['cuota'];
        $tab_recargos = $row['recargos'];
        $tab_fecha = $row['fecha'];
        // echo $row[]
        $c++;
    //   $json[] = array(
    //     'n' => $row['nur'],
    //     'f' => $row['fecha'],
    //     'id' => $row['id']
    //   );
    }
    // $jsonstring = json_encode($json);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <title>Busqueda</title>
</head>
<body>
    <?php
        include("../components/header.php");
        include("../components/search.php");
        if($c==0) {
            $_SESSION['errorImg'] = "searchFailed";
            $_SESSION['errorMSJ'] = "Valor Inexistente";
            include("../components/errors.php");
            echo "<script src='code.js'></script>";
            die();
        }
    ?>
    <div class="nur">
        <form class="nurForm">
            <section>
                <label for="">Contrato:</label>
                <input type="text" disabled value=<?php echo $tab_nur ?>>
            </section>
            <section>
                <label for="">Nombre:</label>
                <input type="text" disabled value=<?php echo $tab_nombre ?>>
            </section>
            <section>
                <label for="">Tipo de Servicio:</label>
                <select>
                    <option value="residencial">Residencial</option>
                    <option value="comercial">Comercial</option>
                </select>
            </section>
            <section>
                <label for="">U Pago:</label>
                <input type="text" disabled value=<?php echo $tab_lastMes ?>>
            </section>
            <section>
                <label for="">Cuota:</label>
                <input type="text" disabled value=<?php echo $tab_cuota ?>>
            </section>
            <section>
                <label for="">Saldo:</label>
                <input type="text" disabled value=<?php echo $tab_recargos ?>>
            </section>
            <section class="cond">
                <label for="">Paga:</label>
                <label for=""></label>
                <input type="text" disabled data-value="1235" value="123">
                <input type="checkbox" title="Condonacion" id="validarCondonacion">
            </section>
            <section>
                <label for="">Pago:</label>
                <input type="text" disabled value=<?php echo $tab_recargos ?>>
            </section>
            <section>
                <label for="">Recargos:</label>
                <input type="text" disabled value=<?php echo $tab_recargos ?>>
            </section>
            <section>
                <label for="">Total:</label>
                <input type="text" disabled >
            </section>
            <section>
                <label for="">Direccion:</label>
                <textarea></textarea>
                <!-- <textarea name="" id="" cols="30" rows="10"></textarea> -->
            </section>
            <section class="busEst">
                <label>Estado:</label>
                <input type="text" disabled value="Activo" id="status">
            </section>
            <button type="submit">Guardar</button>
        </form>
    </div>
    <script>
        document.getElementById("validarCondonacion").addEventListener("change", async e =>{
            // let [t,ch,her] = [e.target,e.target.checked,e.target.previousElementSibling];
            if(!e.target.checked){ return }
            e.target.checked=false;
            let pass = window.prompt("Escriba la contraseña");
            // console.log(pass);
            let d = new FormData();
            d.append("sub",pass);
            await fetch("../php/subPassword.php",{
                method: 'POST',
                body: d
            }).then(res => res.text())
              .then(r => {
                if(r!="0"){
                    e.target.checked=true;
                    e.target.previousElementSibling.removeAttribute("disabled");
                    e.target.previousElementSibling.value=e.target.previousElementSibling.getAttribute("data-value")
                    return
                }
                // e.target.checked=false;
              })

            // subPassword.php

            // console.log(e.target.checked);
        })
    </script>
    <script src="code.js"></script>
</body>
</html>