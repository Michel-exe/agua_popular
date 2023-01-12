<?php
    require("../php/validarSesion.php");
    require("../php/validarAdmin.php");
    // sleep(10);
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../pages/estilos.css">
    <title>Modificar Usuarios</title>
</head>
<body>
    <?php require("../components/header.php");?>
    <div class='updateUser'>
        <nav>
            <a href="#modCon">Actualizar Contraseña</a>
            <a href="#modUse">Actualizar Usuarios</a>
            <a href="#modDes">Actualizar Descuentos</a>
        </nav>
        <div>
            <section>
                <div class="updateUserDiv" data-id="1">
                    <div>
                        <h2 id="modCon">Contraseñas de Validación</h2>
                        <span class="desplegue">
                            <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 448 512" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><path d="M207.029 381.476L12.686 187.132c-9.373-9.373-9.373-24.569 0-33.941l22.667-22.667c9.357-9.357 24.522-9.375 33.901-.04L224 284.505l154.745-154.021c9.379-9.335 24.544-9.317 33.901.04l22.667 22.667c9.373 9.373 9.373 24.569 0 33.941L240.971 381.476c-9.373 9.372-24.569 9.372-33.942 0z"></path></svg>
                        </span>
                    </div>
                    <form data-type="con">
                        <label>Actualizar Contraseña de Acceso:</label>
                        <input placeholder="Escriba su Contraseña" value="">
                        <button type="submit">Actualizar</button>
                    </form>
                    <span>
                        <svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
                    </span>
                </div>
            </section>
            <div>
                <h2 id="modUse">Modificar Usuarios</h2>
                <main></main>
            </div>
            <form id="inputRange" data-type="inputRange">
                <h2 id="modDes">Modificar Descuentos</h2>
                <?php
                    require("../php/cn.php");
                    $sen = "SELECT * FROM descuentos";
                    $res = mysqli_query($con,$sen);
                    
                    // <h3>".$row['mes']."</h3>
                    while($row = mysqli_fetch_array($res)){
                        echo "
                        <h3>".$row['mes']."</h3>
                        <div>
                            <label>".str_replace("0.","",$row['valor'])."%</label>
                            <input type='range' min='0'
                            step='0.01' value='".$row['valor']."' max='0.99'>
                        </div>";
                    }
                ?>
                <button type="submit">Guardar</button>
            </form>
            <form id="agrUser" data-type="agrUser">
                <div>
                    <label for="">Usuario</label>
                    <input type="text" placeholder="juan123">
                </div>
                <div>
                    <label for="">Contraseña</label>
                    <input type="Password" placeholder="juan123">
                </div>
                <div>
                    <label for="">Confirmar Contraseña</label>
                    <input type="Password" placeholder="juan123">
                </div>
            </form>
        </div>
    </div>
    <script>

    </script>
    <script src='./modificarUsers.js'></script>
</body>
</html>