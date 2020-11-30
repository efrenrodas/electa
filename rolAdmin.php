<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Vista de administrador</title>
    </head>
<body>
<div class="container p-3 my-3 bg-primary text-white">
  <h1>Panel de administrador</h1>
  <p>En este menu de administrador puedes reiniciar el conteo de votos para todos los cursos</p>
</div>

<form action="rolAdmin.php" method="POST">
<div class="form-group">
    <label for="sel1">Seleccione la opcion :</label>
    <select class="form-control" id="sel1" name="InfoCurso">
        <option value="todo"> Reiniciar todo</option>
      <option value="close"> Cerrar Elecciones</option>
      
      
    </select>
    <button type="submit" class="btn btn-primary btn-block">CONTINUAR PROCESO</button> 
</form>
  </div>   
    

 

</body>
</html>
<?php
include "conexion.php";
$opcion=$_POST['InfoCurso'];

if($opcion=="todo")
{
    $sql="UPDATE `votantes` SET `estado` = '0', `listas_idlistas` = '4'";
    #echo $usuario;
    $result = $conn->query($sql);
    if($result)
    {
        echo '
        <div class="alert alert-success">
          <strong>datos actualizados con exito !</strong> Datos actualizados 
        </div>
        
        '; 
     }
}
