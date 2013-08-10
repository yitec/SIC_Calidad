<?php

include ('../cnx/dbconection.php');
$hoy=date("Y-m-d H:i:s");


/*****************************************************************************************************************
Accion:Ejecuta todas las operaciones sobre expedientes
Parametros: Vector con lista de parametros segun metodo
/****************************************************************************************************************/

$metodo=$_POST['metodo'];
$parametros=$_POST['parametros'];
$usr = new Categorias;
$usr->$metodo($parametros,$hoy);

class Categorias{

	function autocompleta_usuarios(){
		$result=mysql_query("select nombre from tbl_usuarios");
		while ($row=mysql_fetch_object($result)){
			$vector=$vector.",".utf8_encode($row->nombre); 
		}
		echo $vector;
		mysql_free_result($result);

	}

function crea_categorias($parametros){

	$v_datos=explode(",",$parametros);	
	$result=mysql_query("INSERT INTO `tbl_categorias` (`id_categoria` ,`nombre_categoria` ,`fecha_creacion` ,`estado`)VALUES (NULL , '".utf8_encode($v_datos[0])."', 'NOW()', '1')");
	if (!$result) {//si da error que me despliegue el error del query       		
       		$jsondata['resultado'] = 'Query invalido: ' . mysql_error() ;
        }else{
        	$jsondata['resultado'] = 'Success';
        }
    echo json_encode($jsondata);
}

function crea_subcategorias($parametros){

	$v_datos=explode(",",$parametros);	
	$result=mysql_query("INSERT INTO `tbl_subcat` (`id_subcat`, `id_categoria`, `nombre_subcat`, `fecha_creacion`, `estado`)VALUES (NULL , '".($v_datos[0])."','".utf8_encode($v_datos[1])."', 'NOW()', '1')");
	if (!$result) {//si da error que me despliegue el error del query       		
       		$jsondata['resultado'] = 'Query invalido: ' . mysql_error() ;
        }else{
        	$jsondata['resultado'] = 'Success';
        }
    echo json_encode($jsondata);
}

	}//end class



?>