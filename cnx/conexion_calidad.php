<?php

function conectar()
{	
	$_SESSION['connectid'] = mysql_connect('127.0.0.1', 'root', '');
	mysql_select_db("bd_calidad"); 
}

function desconectar()
{
	mysql_close();
}

?>