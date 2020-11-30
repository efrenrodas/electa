<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
    <title>Seleccione el curso para ver el reporte </title>
    <title>Por Curso</title>
</head>
<body>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>REPORTE DE VOTOS</h1>  <center>    
    <img src="images/logov2.jpg" class="mx-auto rounded-circle" alt="Cinque Terre"> 
</center>
    <p>Este reporte muestra los votos por curso</p>
    <a href="#" onclick="print()" class="btn btn-info" role="button">CLIC PARA IMPRIMIR</a>
  </div>
  
  
</div>

<div class="container">
  <p> </p>     
  
</div>
<?php
include 'conexion.php';
$Valores=$_POST['InfoCurso'];
//lista
list($curso,$cantidadT)=explode("-",$Valores);

// Los delimitadores pueden ser barra, punto o guión
for($j=1;$j<=6;$j++)
{
    if($curso=="todos"){
        $sql="SELECT COUNT(*) from votantes where listas_idlistas=$j and rol='estudiante'";
    }
    else{
    $sql="SELECT COUNT(*) from votantes where listas_idlistas=$j and curso like '$curso'";
    }
//echo $sql;
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$voto=$row['COUNT(*)'];
$lista=$j;
switch($j){
case 1:
    $lista="Lista 5";
break;
case 2:
    $lista="Lista 4";
break;
case 3:
    $lista="Lista 10";
break;
case 4:
    $lista="Sin Votar";
break;
case 5:
    $lista="Blancos";
break;
case 6:
    $lista="Nulos";
break;
}


   echo "En el curso ".$curso." la cantidad de votos por la lista ".$lista." es ".$voto."<br>";
   $Valor=($voto*100)/$cantidadT;
?>

<div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" <?php echo 'style="width:'.$Valor.'%"';?>>
  <?php echo $Valor."% de un total de ".$cantidadT." Estudiantes";?>
  </div>
</div>
<?php
 
}//fim del cilo for
?>
<div class="alert alert-success">
  <strong>Reporte correcto !</strong> <a href="index.html" class="alert-link">Regresar</a>.
</div>
</body>
</html>


