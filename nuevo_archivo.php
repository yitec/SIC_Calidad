<?php
include ('cnx/conexion_calidad.php');
conectar();
//include ('cnx/dbconection.php');
$id = $_GET['id'];
$consulta = "SELECT * FROM `tbl_categorias` WHERE `estado` =1 ORDER  BY `nombre_categoria` ASC";	

$dt=mysql_query($consulta);

?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel ="stylesheet" href="css/general_v2.css" type="text/css" />
        <link rel ="stylesheet" href="css/cuadros.css" type="text/css" />
        <link rel ="stylesheet" href="css/jquery.pnotify.default.css" type="text/css" />
        <link rel ="stylesheet" href="css/ui-lightness/jquery-ui-1.8.18.custom.css" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css' />
        <title>XPD</title>
            <script>
function x(id){
window.open("nuevo_archivo.php?id="+id,'_self');
}


</script>
    </head>

    <body >
    
    		<div class="header"></div>
    		<div class="box">
         <div align="center">
<table><tr><td height="710"> 

<div class="izq_sup_g"></div>
<div class="cen_sup_g"><div  class="Arial14blanco" align="left" style="float:left; margin-top:18px;">Categorias</div><div align="right"></div> </div>
<div class="der_sup_g"></div>
<div class="lineaAzul"></div>
<div class="izq_lat_g"></div>
<div    class="contenido_gm">

<div style="margin-left:650px;  margin-top:5px; " ><a href="javascript:history.back(-1)">Volver</a>&nbsp;-&nbsp;<a href="menu_inventario.php">Men&uacute;</a>&nbsp;-&nbsp;<a href="../login.php">Salir</a></div>


<div id="mainAzulFondo" style="padding:10px;" align="center">
<div id="mainBlancoFondo" style=" width:750px;" align="center">
	
	<div align="center" class="Arial18Azul" style="margin-bottom:10px; margin-top:10px;"> Nuevo Archivo</div>
   
    <form name="frmArchivos" action="operaciones/uploadFile.php" method="post">
    
	<table>
    
	  <tr>
	    <td width="178" class="Arial14Negro"><div align="center">Nombre</div></td>
	    
	    </tr>
	  <tr>
	    <td class="Arial14Negro"><input name="txt_nombre" type="text" class="inputbox" id="txt_nombre" /></td>
	   
	    
	    </tr>
	          
	  </table>
	<table>
	  <tr>
	    <td width="178" class="Arial14Negro"><div align="center">version</div></td>
	    </tr>
	  <tr>
	    <td class="Arial14Negro"><input name="txt_version" type="text" class="inputbox" id="txt_version" /></td>
	    </tr>
	  </table>
	<table>
    
	  <tr>
	    <td width="178" class="Arial14Negro"><div align="center">Categoria</div></td>
	    </tr>
	  <tr>
	    <td class="Arial14Negro"><label><select name="cmb_categoria" class="combos" id="cmb_categoria" onchange="x(this.value)">
	      <option value="0">Seleccione</option>
	      <?php				
									while($info=mysql_fetch_array($dt)){
										echo '
                      <option value="'.$info[0].'">'.utf8_encode($info[1]).'</option>';}?>
	      </select> <script>
		  document.frmArchivos.cmb_categoria.value= "<?php $_GET['id']?>";
		     </script></label></td>
	    </tr>
	  <tr>
	  
	    </tr>
	  </table>
	<table>
	  <tr>
	    <td width="178" class="Arial14Negro"><div align="center">SubCategoria</div></td>
	    </tr>
	  <tr>
	    <td class="Arial14Negro">
		<select name="cmb_subcat" class="combos" id="cmb_categoria">
	      <option selected="selected" value="0">Seleccione</option>
		<?php $consulta2 = "SELECT `id_subcat`,`nombre_subcat` FROM `tbl_subcat` WHERE `id_categoria`= '".$id."'";	
		  $dt2=mysql_query($consulta2);
          				
									while($info2=mysql_fetch_array($dt2)){
										echo '
                      <option value="'.$info2[0].'">'.utf8_encode($info2[1]).'</option>';}?></select> 
	    </tr>
	  </table>
	<table>
	  <tr>
	    <td width="178" class="Arial14Negro"><div align="center">Archivo</div></td>
	    </tr>
	  <tr>
	    <td class="Arial14Negro"><input name="archivo" type="file" class="inputbox" id="archivo"></td>
	    </tr>
	  </table>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
    
	<div align="center" style="margin-top:20px; margin-bottom:20px;"><input name="guardar_archivo" id="guardar_archivo" type="image" src="img/btn_guardar.png"  /></div>    
</form>
</div><!--fin cuadro blanco--> 
</div><!--fin cuadro azul--> 




</div><!--fin div de contenido cudro gm-->
<div class="der_lat_g"></div>
<div class="izq_inf_g"></div>
<div class="cen_inf_g"></div>
<div class="der_inf_g"></div>

<div align="center" style=" margin-left:350px;float:left" class="Arial8negro">
Sistema de Control e Informaci&oacute;n.  
</div>
<div align="center" style="float:left" class="Arial8azul">&nbsp;CINA.&nbsp;
</div>
<div align="center" style="float:left" class="Arial8negro">
Versi&oacute;n 1.0
</div>
</td></tr></table>

</div>
           
			</div>		
    </body>
  <script src="includes/jquery-1.8.3.js" type="text/javascript"></script>
<script src="includes/jquery.pnotify.js" type="text/javascript"></script>
<script src="includes/Scripts_Calidad.js" type="text/javascript"></script>  
</html>

