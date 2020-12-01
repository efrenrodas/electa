<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingresar nuevos estudiantes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<div class="container p-3 my-3 bg-dark text-white">
  <h1>Registro de estudiantes</h1>
  <p>Ingresar los campos.</p>
</div>
<body>
  
<div class="container">
  <h2>Formulario de ingreso</h2>
 
  <form action="Registro.php" class="was-validated" method="POST">
    <div class="form-group">
      <label for="uname">Nombres:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter username" name="nombre" required>
      <div class="valid-feedback">Valido.</div>
      <div class="invalid-feedback">Por faor llene este campo</div>
    </div>
    <div class="form-group">
      <label for="uname">Apellidos:</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter username" name="apellidos" required>
      <div class="valid-feedback">Valido.</div>
      <div class="invalid-feedback">Por faor llene este campo</div>
    </div>
    <div class="form-group">
    <label for="sel1">Seleccione el curso :</label>
    <select class="form-control" id="sel1" name="curso">
       
      <option value="1 egb"> 1 EGB</option>
      <option value="2 egb"> 2 EGB</option>
      <option value="3 egb"> 3 EGB</option>
      <option value="4 egb"> 4 EGB</option>
      <option value="5 egb"> 5 EGB</option>
      <option value="6 egb"> 6 EGB</option>
      <option value="7 egb"> 7 EGB</option>
      <option value="8 egb"> 8 EGB</option>
      <option value="9 egb"> 9 EGB</option>
      <option value="10 egb"> 10 EGB</option>
      <option value="1 bgu"> 1 BGU</option>
      <option value="2 bgu"> 2 BGU</option>
      <option value="3 bgu_a"> 3 BGU A</option>
      <option value="3 bgu_b"> 3 BGU B</option>
      
    </select>
   

  </div> 
    <div class="form-group">
      <label for="pwd">Cedula:</label>
      <input type="number" class="form-control" id="pwd" placeholder="Enter password" name="cedula" required>
      <div class="valid-feedback">Valido.</div>
      <div class="invalid-feedback">Por faor llene este campo.</div>
    </div>

    <div class="form-group">
    <label for="sel1">Seleccione el rol:</label>
    <select class="form-control" id="sel1" name="rol">
       
      <option value="estudiante"> Estudiante</option>
      <option value="docente"> Admiinstrador</option>
     
      </select>
      <br>
    <button type="submit" name="que"value="guardar" class="btn btn-primary">Guardar</button>
  </form>
  </div> 

</div>

</body>
</html>
<?php
include 'conexion.php';
@$nombres=$_POST['nombre'];
@$apellidos=$_POST['apellidos'];
@$curso=$_POST['curso'];
@$cedula=$_POST['cedula'];
@$rol=$_POST['rol'];
@$queHago=$_POST['que'];

$cedulaMd5= md5($cedula);

$sql="INSERT INTO `votantes` (`idvotantes`, `nombres`, `apellidos`, `curso`, `cedula`, `rol`, `estado`, `listas_idlistas`) 
VALUES (NULL, '$nombres', '$apellidos', ' $curso', '$cedulaMd5', '$rol', '1', '4')";
//echo $sql;
if($queHago=="guardar")
{
    if($result = $conn->query($sql)){
        echo '
        <div class="alert alert-success">
          <strong>datos guardados con exito !</strong> 
        </div>
        
        '; 
    }
}
