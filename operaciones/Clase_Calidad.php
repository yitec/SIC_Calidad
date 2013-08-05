<?php
session_start();
require_once('../cnx/conexion_calidad.php');
conectar();
$hoy=date("Y-m-d H:i:s");
/*****************************************************************************************************************
Accion:Ejecuta todas las operaciones sobre expedientes
Parametros: Vector con lista de parametros segun metodo
/****************************************************************************************************************/

$metodo=$_POST['metodo'];
/*$usr = new Expedientes;*/
$usr->$metodo($parametros,$hoy);
echo $usr;

function crea_categorias($parametros,$hoy){
	


	$v_datos=explode(",",$parametros);	
	$result=mysql_query("INSERT INTO `tbl_categorias` (`id_categoria` ,`nombre_categoria` ,`fecha_creacion` ,`estado`)VALUES (NULL , '".utf8_encode($v_datos[0])."', 'NOW()', '1')");
	if (!$result) {//si da error que me despliegue el error del query       		
       		$jsondata['resultado'] = 'Query invalido: ' . mysql_error() ;
        }else{
        	$jsondata['resultado'] = 'Success';
        }
    echo json_encode($jsondata);
}

	



?>