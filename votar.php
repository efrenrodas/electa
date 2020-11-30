<?php
$usuario=$_POST['cedula'];
include "conexion.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="slylesheet" type="text/css" href="css.css">
    <title>Elige Partido</title>
</head>
<?php

$sql="SELECT * FROM `votantes` WHERE `cedula` LIKE '$usuario' ";
#echo $usuario;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    //Salida de datos del query
         while($row = $result->fetch_assoc()){
             $_SESSION['user'] = $row["cedula"];
             $estado=$row["estado"];
             $idVotantes=$row['idvotantes'];
             $nombres=$row['nombres'];
             $apellidos=$row['apellidos'];
             $rol=$row['rol'];
                          //echo "Usuario: ".$row["Usuario"]."-Clave: ".$row["Clave"];
             //echo "login correcto";
            // header("Location: perfil.php");
         }
    if($estado==0)
    {
?>

<body>
<div class="alert alert-success">
  <strong><?php echo $rol." ". $nombres." ".$apellidos ?></strong> Elige un candidato.
</div>
    <form action="guardaVoto.php" method="post">
        <div class="row">
            <div class="col-sm-4">
              <div class="radio">
                   <img src="images/lista4.jpg" width="400" height="200"> <br>
                 
                   <label>  <input type="radio" name="optradio" value="2" >LISTA 4</label>
               
                    </div>
            </div>
            <div class="col-sm-4">
                <div class="radio">
                <img src="images/lista5.jpg"width="400" height="200"> <br>
                <label><input type="radio"  value="1" name="optradio">LISTA  5</label>
                </div>
            </div>
            <div class="col-sm-4">
                 <div class="radio">
                 <img src="images/lista10.jpg"width="400" height="200"> <br>
                <label><input type="radio"  value="3" name="optradio">LISTA 10  </label>
                </div>
            </div>
            <div class="col-sm-4">
                 <div class="radio">
                 <img src="images/blanco.jpg"width="400" height="200"> <br>
                <label><input type="radio"  value="5" name="optradio">BLANCO  </label>
                </div>
            </div>
            <div class="col-sm-4">
                 <div class="radio">
                 <img src="images/nulo.jpg"width="400" height="200"> <br>
                <label><input type="radio"  value="6" name="optradio">NULO  </label>
                </div>
            </div>
        </div>
  
        <button type="submit" class="btn btn-primary btn-block">Registrar voto</button> 

<input type="hidden" name='idVot' value="<?php echo $idVotantes; ?>">
    </form>
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

 }
 else{
     
     echo "<script>alert('Sus Datos estan Incorrectos');</script>";
 }