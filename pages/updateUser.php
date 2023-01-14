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
    <?php 
        require("../components/dialog.php");
        if(isset($_GET['a'])){
            if($_GET['a']=="t") dialog("Logrado","Usuario registrado Exitosamente");
            else dialog("Error","Hubo un error al registrar el usuario");
        } else if(isset($_GET['d'])){
            if($_GET['d']=="t") dialog("Logrado","Descuentos actualizados");
            else dialog("Error","Hubo un error al actualizar el descuento");
        } else if(isset($_GET['c'])){
            if($_GET['c']=="t") dialog("Logrado","Cuota agregada");
            else dialog("Error","Hubo un error al agregar la cuota");
        } else if(isset($_GET['u'])){
            if($_GET['u']=="t") dialog("Logrado","Usuario Actualizado en el campo de: ".$_GET['campo']);
            else dialog("Error","Hubo un error al actualiar el campo: ".$_GET['campo']."<br>Posiblemente ya exista");
        } else if(isset($_GET['de'])){
            if($_GET['de']=="t") dialog("Logrado","Usuario eliminado");
            else dialog("Error","Hubo un error al eliminar el usuario ");
        } else if(isset($_GET['v'])){
            if($_GET['v']=="t") dialog("Logrado","Contraseña de validacion actualizada");
            else if($_GET['v']=="n") dialog("Error","Las contraseñas no coinciden");
            else dialog("Error","Hubo un error al actualiar el campo");
        }
    ?>
    <div class='updateUser'>
        <nav>
            <a href="#updUser">Actualizar Usuarios</a>
            <a href="#agrUser">Agregar Usuario</a>
            <a href="#modDes">Modificar Descuentos</a>
            <a href="#agrCuo">Agregar Cuota</a>
            <a href="#modVal">Contraseña de Validacion</a>
        </nav>
        <div class="cont">
            <section>
                <h2 class="up-tit" id="updUser">Actualizar Usuarios</h2>
                <?php
                    require("../php/cn.php");
                    $sen = "SELECT id,name FROM users ORDER BY id DESC LIMIT 3 ";
                    $res = mysqli_query($con,$sen);
                    
                    while($row = mysqli_fetch_array($res)){
                        $name = $row['name'];
                        $id = $row['id'];
                        echo "
                            <div class='updateDiv despliegue'>
                                <div class='updateTit' data-id='$id'>
                                    <span class='del'>
                                        <svg stroke='currentColor' fill='none' stroke-width='2' viewBox='0 0 24 24' stroke-linecap='round' stroke-linejoin='round' height='1em' width='1em' xmlns='http://www.w3.org/2000/svg'><polyline points='3 6 5 6 21 6'></polyline><path d='M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2'></path><line x1='10' y1='11' x2='10' y2='17'></line><line x1='14' y1='11' x2='14' y2='17'></line></svg>
                                    </span>
                                    <h3>$name</h3>
                                    <span class='des'>
                                        <svg stroke='currentColor' fill='currentColor' stroke-width='0' viewBox='0 0 448 512' height='1em' width='1em' xmlns='http://www.w3.org/2000/svg'><path d='M207.029 381.476L12.686 187.132c-9.373-9.373-9.373-24.569 0-33.941l22.667-22.667c9.357-9.357 24.522-9.375 33.901-.04L224 284.505l154.745-154.021c9.379-9.335 24.544-9.317 33.901.04l22.667 22.667c9.373 9.373 9.373 24.569 0 33.941L240.971 381.476c-9.373 9.372-24.569 9.372-33.942 0z'></path></svg>
                                    </span>
                                </div>
                                <div class='updateForm' data-id='$id'>
                                    <form data-form='updUser' data-tipo='update' data-campo='nombre' data-type='nombre'>
                                        <label>Editar Nombre:</label>
                                        <input placeholder='Escriba su nombre' value='$name' required minlength='4' maxlength='30'>
                                        <input type='submit' value='Actualizar'/>
                                    </form>
                                    <form data-form='updUser' data-tipo='update' data-campo='usuario' data-type='user'>
                                        <label>Actualizar Usuario:</label>
                                        <input placeholder='Escriba su usuario' required minlength='4' maxlength='16'>
                                        <input type='submit' value='Actualizar'/>
                                    </form>
                                    <form data-form='updUser' data-tipo='update' data-campo='contraseña' data-type='pass'>
                                        <label>Actualizar Contraseña:</label>
                                        <input type='text' placeholder='Nueva contraseña' required minlength='8' maxlength='30'>
                                        <input type='text' placeholder='Confirmar contraseña' required minlength='8' maxlength='30'>
                                        <input type='submit' value='Restaurar'/>
                                    </form>
                                </div>
                            </div>
                        ";
                    }
                ?>
            </section>
            <section>
                <h2 class="up-tit" id="agrUser">Agregar Usuario</h2>
                <div class='updateDiv agregarUsuario'>
                    <form action="" data-form="agrUser" data-tipo='agregar'>
                        <div>
                            <label for="">Nombre</label>
                            <input type="text" placeholder="nombre" minlength="4" maxlength="30" required>
                        </div>
                        <div>
                            <label for="">Usuario</label>
                            <input type="text" placeholder="Usuario" minlength="4" maxlength="16" required>
                        </div>
                        <div>
                            <label for="">Contraseña</label>
                            <input type="text" minlength="8" maxlength="30" placeholder="Contraseña" required>
                            <input type="text" minlength="8" maxlength="30" placeholder="Confirmar Contraseña" required>
                        </div>
                        <input type="submit" value="Guardar">
                    </form>
                </div>
            </section>
            <section>
                <h2 class="up-tit" id="modDes">Modificar Descuentos</h2>
                <form class="updateDiv descuentos" data-form="modDes" data-tipo="descuentos">
                    <?php
                        $sen = "SELECT * FROM descuentos";
                        $res = mysqli_query($con,$sen);

                        while($row = mysqli_fetch_array($res)){
                            echo "
                            <section>
                                <p>".$row['mes']."</p>
                                <div>
                                    <label>".str_pad((str_replace("0.","",$row['valor'])),2,"0")."%</label>
                                    <input type='range' min='0'
                                    step='0.01' value='".$row['valor']."' max='0.99'>
                                </div>
                            </section>
                            ";
                        }
                    ?>
                    <input type="submit" value="Guardar">
                </form>
            </section>
            <section>
                <h2 class="up-tit" id="agrCuo">Agregar Cuota</h2>
                <form class="updateDiv" data-form="agrCuo" data-tipo="cuota" >
                    <input type="number" required value="0">
                    <input type="submit" value="Guardar">
                </form>
            </section>
            <section>
                <h2 class="up-tit" id="modVal">Contraseña de Validacion</h2>
                <form class="updateDiv agregarUsuario" data-form="modVal" data-tipo="validacion">
                    <div style="padding-bottom: 10px;">
                        <label>Actual contraseña de validacion:</label>
                        <input type="text" placeholder="Escriba su actual contraseña" required minlength="8" maxlength="30">
                    </div>
                    <div style="padding-bottom: 10px;">
                        <label>Nueva contraseña de validacion:</label>
                        <input type="text" placeholder="Escriba su nueva contraseña" required minlength="8" maxlength="30">
                    </div>
                    <div>
                        <label>Confirmar contraseña de validacion:</label>
                        <input type="text" placeholder="Escriba su nueva contraseña" required minlength="8" maxlength="30">
                    </div>
                    <input type="submit" value="Actualizar">
                </form>
            </section>
        </div>
    </div>
    <!-- <script src='./modificarUsers.js'></script> -->
    <script src='../compressed/modificarUsers.min.js'></script>
</body>
</html>