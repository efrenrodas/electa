<?php

 $host="localhost";
 $user="root";
 $clave="";
 $base="electa";

 $conn = new mysqli($host,$user,$clave,$base);

 if ($conn->connect_error){
     die("Error en la conexion: ".$conn->connect_error);
 }