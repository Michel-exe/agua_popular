<?php
require("../php/validarSesion.php");

if (!isset($_GET['ide'])) die("Recurso inexistente");

require("../php/cn.php");
$nur = $_GET['ide'];

$sen = "SELECT * FROM tomas WHERE numRegistro = '$nur'";
$res = mysqli_query($con, $sen);

if (!$res) die('Nur no existente');
$c = 0;
while ($row = mysqli_fetch_array($res)) {
    $tab_contrato = $row['contrato'];
    $tab_nombre = $row['nombre'];
    $tab_tipo = $row['tipo'];
    $tab_ultFecha = $row['ultFecha'];
    $tab_cuota = $row['cuota'];
    $tab_saldo = $row['saldo'];
    $tab_estado = $row['estado'];

    $dir = "Calle: " . $row['calle'] . " mzn." . $row['mzn'] . " n. " . $row['num'] . ". Entre calle: " . $row['calle1'] . " y calle: " . $row['calle2'] . ". En la colonia: " . $row['colonia'] . " de Nanacamilpa De Mariano Arista Tlaxcala Mexico.";
    $col = ($row['colonia'] === "ARENAS" ? "DOMINGO+" . $row['colonia'] : $row['colonia']);
    $dirLink = "calle+" . $row['calle'] . "+" . $row['num'] . ",+" . $col . "+Cd+Nanacamilpa+Tlax";

    $c++;
}

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
    require("../components/header.php");
    require("../components/search.php");
    if ($c == 0) {
        $_SESSION['errorImg'] = "searchFailed";
        $_SESSION['errorMSJ'] = "Valor Inexistente";
        require("../components/errors.php");
        echo "<script src='code.js'></script>";
        die();
    }
    // [$difTot, $timeAdeudo,$cadCuotas,$tot] = calcularFecha($con, $tab_ultFecha);

    ?>
    <div class="nur">
        <form id="nur" class="nurForm">
            <fieldset class="datos">
                <div>
                    <section>
                        <label for="">Nur:</label>
                        <input type="text" disabled id="camNur" value="<?php echo $nur ?>">
                    </section>
                    <section>
                        <label for="">Contrato:</label>
                        <input type="text" disabled value="<?php echo $tab_contrato ?>">
                    </section>
                </div>
                <section>
                    <label for="">Nombre:</label>
                    <input type="text" disabled value="<?php echo $tab_nombre ?>">
                </section>
                <section>
                    <label for="">Servicio:</label>
                    <input type="text" disabled value="<?php echo $tab_tipo ?>">
                </section>
                <section class="direccion">
                    <label for="">Direccion:</label>
                    <textarea disabled><?php echo $dir; ?></textarea>
                    <a href="https://www.google.com.mx/maps/search/<?php echo $dirLink; ?>" target="_blank">Ver en Google Maps</a>
                </section>
            </fieldset>
            <fieldset class="infoPago">
                <div>
                    <section>
                        <label for="">Ultimo_Pago:</label>
                        <input type="text" id="ultPago" disabled value="<?php echo $tab_ultFecha ?>">
                    </section>
                    <section>
                        <label for="">Adeudo:</label>
                        <input type="text" id="timeAde" disabled>
                    </section>
                </div>
            </fieldset>
            <fieldset class="cuotas">
                <section>
                    <label for="">Meses de Adeudo:</label>
                    <div id="cuo">
                        <div>
                            <section>
                                <label for="">De</label>
                                <label for="">a</label>
                                <label for="">meses</label>
                                <label for="">precio</label>
                                <label for="">total</label>
                            </section>
                            <div></div>
                        </div>
                    </div>
                </section>
                <section class="ku">
                    <label for="">Cuotas: </label>
                    <input type="text" id="cuotas" disabled>
                </section>
            </fieldset>
            <fieldset class="pago">
                <div>
                    <section>
                        <label for="">Adeudo:</label>
                        <input type="text" id="cuota" disabled>
                    </section>
                    <section>
                        <label for="">Meses:</label>
                        <input type="text" id="mesesAdeudo" disabled>
                    </section>
                </div>
                <section class="recargos">
                    <input type="checkbox" id="recargos">
                    <label for="recargos">Recargos:</label>
                </section>
                <section class="desAnual">
                    <label for="">Descuento anual:</label>
                    <select id="descuento">
                        <option value="0.0">Sin Descuento</option>
                        <?php
                            $sen2 = "SELECT * FROM descuentos";
                            $res2 = mysqli_query($con,$sen2);

                            while($row2 = mysqli_fetch_array($res2)){
                                echo "<option value=".$row2['valor'].">".$row2['mes']."</option>";
                            }
                        ?>
                    </select>
                </section>
                <section class="fecha">
                    <label for="">Tiempo hasta donde paga:</label>
                    <input type="month" id="month">
                </section>
                <section class="cond">
                    <label for="">Total a pagar:</label>
                    <input type="text" id="paga" disabled value="">
                    <input type="checkbox" title="Condonacion" id="validarCondonacion">
                </section>
            </fieldset>
            <button type="submit" id="confirmPago" disabled>Confirmar Pago</button>
        </form>
    </div>
    <script src="busqueda.js"></script>
    <script src="code.js"></script>
</body>

</html>