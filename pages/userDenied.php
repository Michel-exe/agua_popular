<?php  include("../php/validarSesion.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <title>Acceso Denegado</title>
</head>
<body>
    <?php include("../components/header.php");?>
    <div class="denied">
        <div>
            <picture>
                <img src="../media/serverError.png" alt="Error en el server">
            </picture>
            <h3>Usted no tiene acceso a esta página</h3>
            <a href="dashboard.php">Regresar</a>
        </div>
    </div>
</body>
</html>