<?php
    require("../php/validarSesion.php");
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
        require("../components/header.php");
        require("../components/search.php");
    ?>
    <div class="dash">
        <main>
        <?php if($_SESSION['admin']==="true"){ ?>
            <div>
                <h2>Reportes</h2>
                <span>
                <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"></path><path d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z"></path></svg>
                    </span>
                <nav>
                    <section>
                        <a href="#">Clasificacion de atrasos</a>
                        <a href="#">Rangos de adeudo</a>
                    </section>
                    <section>
                        <a href="#">Recaudacion clasificada</a>
                    </section>
                    <section>
                        <a href="./editPDFs/reciboDeCobro.php">Editar Recibo</a>
                        <a href="./editPDFs/notificacion.php">Editar Notificacion</a>
                    </section>
                    <section>
                        <a href="#">Informe para SPF</a>
                        <a href="#">Informe para OFS</a>
                    </section>
                    <section>
                        <a href="#">Subsidios y descuentos</a>
                    </section>
                    
                </nav>
            </div>
        <?php } ?>
            <div>
                <h2>Caja</h2>
                <span>
                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 16 16" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M4.98 1a.5.5 0 0 0-.39.188L1.54 5H6a.5.5 0 0 1 .5.5 1.5 1.5 0 0 0 3 0A.5.5 0 0 1 10 5h4.46l-3.05-3.812A.5.5 0 0 0 11.02 1H4.98zm9.954 5H10.45a2.5 2.5 0 0 1-4.9 0H1.066l.32 2.562A.5.5 0 0 0 1.884 9h12.234a.5.5 0 0 0 .496-.438L14.933 6zM3.809.563A1.5 1.5 0 0 1 4.981 0h6.038a1.5 1.5 0 0 1 1.172.563l3.7 4.625a.5.5 0 0 1 .105.374l-.39 3.124A1.5 1.5 0 0 1 14.117 10H1.883A1.5 1.5 0 0 1 .394 8.686l-.39-3.124a.5.5 0 0 1 .106-.374L3.81.563zM.125 11.17A.5.5 0 0 1 .5 11H6a.5.5 0 0 1 .5.5 1.5 1.5 0 0 0 3 0 .5.5 0 0 1 .5-.5h5.5a.5.5 0 0 1 .496.562l-.39 3.124A1.5 1.5 0 0 1 14.117 16H1.883a1.5 1.5 0 0 1-1.489-1.314l-.39-3.124a.5.5 0 0 1 .121-.393zm.941.83.32 2.562a.5.5 0 0 0 .497.438h12.234a.5.5 0 0 0 .496-.438l.32-2.562H10.45a2.5 2.5 0 0 1-4.9 0H1.066z"></path></svg>
                </span>
                <nav>
                    <section>
                        <a href="#">Referencias para contratos</a>
                        <a href="#">Referencias para otros Servicios</a>
                        
                    </section>
                    <section>
                        <a href="#">Consulta de referencias</a>
                        <a href="#">Consulta de movimientos pagados</a>
                    </section>
                    
                    <section>
                        <a href="#">Reeinprecion de recibos de contratos</a>
                        <a href="#">Reeinprecion de recibos de otros servicios</a>
                    </section>
                    <section>
                        <a href="#">Cancelación de recibos</a>
                        
                    </section>
                    <section>
                        <a href="#">Corte de caja</a>
                    </section>
                    <section>
                        <a href="#">Consulta de recibos</a>
                        
                    </section>
                </nav>
            </div>
            <div>
                <h2>Cortes</h2>
                <span>
                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path fill="none" stroke-width="2" d="M16,16 C16,14.8954305 12.8659932,14 9,14 C5.13400675,14 2,14.8954305 2,16 C2,17.1045695 5.13400675,18 9,18 C12.8659932,18 16,17.1045695 16,16 Z M2,16 L2,20.9367547 C2,22.0762536 5.13400675,23 9,23 C12.8659932,23 16,22.0762537 16,20.9367548 L16,16 M9,5 C4.581722,5 1,5.8954305 1,7 C1,8.1045695 4.581722,9 9,9 M1,7 L1,12.0000002 C1,13.0128881 4.581722,14 9,14 M23,4 C23,2.8954305 19.9004329,2 16.0769231,2 C12.2534133,2 9.15384615,2.8954305 9.15384615,4 C9.15384615,5.1045695 12.2534133,6 16.0769231,6 C19.9004329,6 23,5.1045695 23,4 Z M16,16 C19.8235098,16 23.0000002,15.0128879 23.0000002,14 L23,4 M9.15384615,3.99999999 L9.15384615,14.1660042 M8.99999999,9.00000001 C8.99999999,10.0128879 12.2534135,11 16.0769233,11 C19.9004331,11 23.0000004,10.0128879 23.0000004,9.00000001"></path></svg>
                </span>
                <nav>
                    
                    <section>
                        <a href="#">Cortes realizados</a>
                        <a href="#">Conexiones contratadas</a>
                    </section>
                    <section>
                        <a href="#">Reconexiones pendientes</a>
                        <a href="#">Reconexiones realizadas</a>
                    </section>
                    
                </nav>
            </div>
        </main>
    </div>
    <script src="./code.js"></script>
</body>
</html>