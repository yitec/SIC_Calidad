<?php
include ('../cnx/dbconection.php');
include_once('../includes/class.upload.php');


 $nombre=$_POST['txt_nombre'];
  $version=$_POST['txt_version'];
  $categoria=$_POST['cmb_categoria'];
  $subcat=$_POST['cmb_subcat'];
extract($_REQUEST);
 
if(!isset($Submit) && $cmd = "2568POL"){
		
		if($_FILES["archivo"]["name"]){
		
					
			#Upload de Archivos
			$file = new Upload($_FILES["archivo"]); 			#Inctancio el Objeto de Imagen
			$new_name_file				= md5(rand(0,10000000).'_'.$_FILES["archivo".$j]['name']); #Creo el nuevo nombre de la IMG
			$file->file_new_name_body	= $new_name_file;		#Renombro el archivo
			$file->uploaded;									#cargo el archivo
			$file->Process('../archivos/ControlCalidad/');							#Subo el Archivo en la carpeta Indicada
			$file->processed; 									#Proceso TODO
			$img_mx = $file->file_dst_name_body.'.'.$file->file_dst_name_ext;
			$query = "INSERT INTO `tbl_archivos` (`id_archivo`, `id_categoria`, `id_subcat`, `nombre_archivo`, `version`, `fecha_creacion`, `id_usuario`, `url_archivo`, `estado`) VALUES (NULL,'$categoria', '$subcat', '$nombre','$version',NOW(),NULL,NULL,'1')";
			$cnx->consulta($query);
		 }
	}
	echo '<META HTTP-EQUIV="refresh" CONTENT="60; url=../nuevo_archivo.php?status=sucess"> ';
?>