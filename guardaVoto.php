<?php
$voto=$_POST['optradio'];
$votante=$_POST['idVot'];
include "conexion.php";
?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

     <title>GuardaVoto</title>
 </head>
<?php
//echo "el votante ".$votante." Voto por ".$voto;

$sql="SELECT * FROM `votantes` WHERE `idvotantes` LIKE '$votante' and `estado` = 0";
//echo $sql;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
 $sql1="UPDATE `votantes` SET `estado` = '1',`listas_idlistas` = '$voto' WHERE `votantes`.`idvotantes` = $votante ";
 $result = $conn->query($sql1);
 ?>

 <body>
    <div class="alert alert-success alert-dismissible">
     <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Voto registrado!</strong> Su voto se ha registrado correctamente.
        </div>
 </body>
 </html>
 <?php
}
else
{
echo '
<div class="alert alert-success">
  <strong>Ya ha votado!</strong> Has Votado <a href="index.html" class="alert-link">Regresar al inicio</a>.
</div>

';    
}


//sleep(5);
//header("Location: index.html");