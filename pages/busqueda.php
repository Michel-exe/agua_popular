<?php
    include("../php/validarSesion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilos.css">
    <title>Dashboard</title>
</head>
<body>
    <?php
        include("../components/header.php");
        include("../components/search.php");
    ?>
    <div class="nur">
        <form class="nurForm">
            <section>
                <label for="">Contrato:</label>
                <input type="text">
            </section>
            <section>
                <label for="">Nombre:</label>
                <input type="text">
            </section>
            <section>
                <label for="">Tipo de Servicio:</label>
                <select>
                    <option value="normal">Normal</option>
                    <option value="premium">Premium</option>
                    <option value="gold">Gold</option>
                </select>
            </section>
            <section>
                <label for="">U Pago:</label>
                <input type="text">
            </section>
            <section>
                <label for="">Cuota:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Saldo:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Paga:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Pago:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Recargos:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Total:</label>
                <input type="tel">
            </section>
            <section>
                <label for="">Direccion:</label>
                <textarea></textarea>
                <!-- <textarea name="" id="" cols="30" rows="10"></textarea> -->
            </section>
            <section class="busEst">
                <label>Estado:</label>
                <input type="tel" disabled value="Activo">
            </section>
            <button type="submit">Guardar</button>
        </form>
    </div>
    <script src="code.js"></script>
</body>
</html>