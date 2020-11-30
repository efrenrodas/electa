<?php

include 'conexion.php';
for($i=1;$i<=13;$i++)
{
    if($i>10)
    {
        $curso=($i-10)." bgu";
    }
    else{$curso=$i." egb";}

for($j=1;$j<=5;$j++)
{
    $sql="SELECT COUNT(*) from votantes where listas_idlistas=$j and curso like '$curso'";
#echo $sql;
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$voto=$row['COUNT(*)'];
$lista=$j;
if($j==4)
{
$lista="Blancos";
}
if($j==5){
    $lista="Nulos";
}
 echo "En el curso ".$curso." la cantidad de votos por la lista ".$lista." es ".$voto."<br>";

}

}






