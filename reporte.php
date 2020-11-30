<?php
include 'conexion.php';
for($i=1;$i<=14;$i++)
{
    if($i>10 and $i<13)
    {
      
            $curso=($i-10)." bgu";
        
    }
    
    else{$curso=$i." egb";}
    if($i==13){$curso="3 bgu_a";}
    if($i==14){$curso="3 bgu_b";}

    

for($j=1;$j<=6;$j++)
{
    $sql="SELECT COUNT(*) from votantes where listas_idlistas=$j and curso like '$curso'";
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

if($j!=4){
   echo "En el curso ".$curso." la cantidad de votos por la lista ".$lista." es ".$voto."<br>";
}
else{
    echo "En el curso ".$curso." la cantidad de estudiantes ".$lista." es ".$voto."<br>"; 
}
 
}
   
}








