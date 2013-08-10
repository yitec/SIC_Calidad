  $(document).ready(function(){
  
  
  //***************************************************Guardar categoria******************************************
$("#btn_guardar").click(function(event){
		
		event.preventDefault();	
		if($("#txt_nombre").val() =="" ) {  
        	$.pnotify({
			    pnotify_title: 'Error ',
    			pnotify_text: 'Debes indicar un nombre',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
        	return false;  
    	}  
  
		
	var parametros=$("#txt_nombre").val();
		$.ajax({
        type: "POST",
		async: false,
		dataType: "json",
        url: "operaciones/Clase_Calidad.php",
		data: "metodo=crea_categorias&parametros="+parametros,
		 		
		success: function(datos){

		
		if (data	=="Success"){
				$.pnotify({
			    pnotify_title: 'Nuevo Categoria!!',
    			pnotify_text: 'La categoria fue guardada exitosamente.',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
		}else{
				$.pnotify({
			    pnotify_title: 'Error!!',
    			pnotify_text: 'La categoria ya existe',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
			
		}
				
				
		}//end succces function
		});//end ajax function			
		$('#txt_nombre').focus();	
		
		
limpiar();
});
  
  
  //***************************************************Guardar SUBcategoria******************************************
$("#btn_guardar_s").click(function(event){
		
		event.preventDefault();
		if($("#cmb_categoria").val()=="0"){
				$.pnotify({
			    pnotify_title: 'Error ',
    			pnotify_text: 'Debes indicar una categoría',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
		}	
		if($("#txt_subcat").val() =="" ) {  
        	$.pnotify({
			    pnotify_title: 'Error ',
    			pnotify_text: 'Debes indicar un nombre',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
        	return false;  
    	}  
  
		
	var parametros=$("#cmb_categoria").val()+","+$("#txt_subcat").val();
		$.ajax({
        type: "POST",
		async: false,
		dataType: "json",
        url: "operaciones/Clase_Calidad.php",
		data: "metodo=crea_subcategorias&parametros="+parametros,
		 		
		success: function(datos){

		
		if (data	=="Success"){
				$.pnotify({
			    pnotify_title: 'Nuevo Categoria!!',
    			pnotify_text: 'La categoria fue guardada exitosamente.',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
		}else{
				$.pnotify({
			    pnotify_title: 'Error!!',
    			pnotify_text: 'La categoria ya existe',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
			
		}
				
				
		}//end succces function
		});//end ajax function			
		$('#txt_nombre').focus();	
		
		
limpiar();
});
   //***************************************************Guardar Archivo******************************************
$("#guardar_archivo").click(function(event){
		
		event.preventDefault();	
		if($("#txt_nombre").val() =="" ) {  
        	$.pnotify({
			    pnotify_title: 'Error ',
    			pnotify_text: 'Debes indicar un nombre',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
        	return false;  
    	}  
  
		
	var parametros=$("#txt_nombre").val();
		$.ajax({
        type: "POST",
		async: false,
		dataType: "json",
        url: "operaciones/Clase_Calidad.php",
		data: "metodo=crea_categorias&parametros="+parametros,
		 		
		success: function(datos){

		
		if (data	=="Success"){
				$.pnotify({
			    pnotify_title: 'Nuevo Categoria!!',
    			pnotify_text: 'La categoria fue guardada exitosamente.',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
		}else{
				$.pnotify({
			    pnotify_title: 'Error!!',
    			pnotify_text: 'La categoria ya existe',
    			pnotify_type: 'info',
    			pnotify_hide: true
				});
			
		}
				
				
		}//end succces function
		});//end ajax function			
		$('#txt_nombre').focus();	
		
		
limpiar();
}); 
   
  
  /***************************************Limpiar todos los campos***************************************/
  function limpiar(){
		$('#txt_nombre').attr('value','');
		$('#txt_subcat').attr('value','');
  }
  
  
  
  
  /************************************Tool Tip************************************************************/
  $( document ).tooltip({
		position: {
		  my: "center bottom-20",
		  at: "center top",
		  using: function( position, feedback ) {
			$( this ).css( position );
			$( "<div>" )
			  .addClass( "arrow" )
			  .addClass( feedback.vertical )
			  .addClass( feedback.horizontal )
			  .appendTo( this );
		  }
		}
  });
  
  /************************************Notificaciones Jquery************************************************************/
  function notificacion(titulo,cuerpo,tipo){
	$.pnotify({
	pnotify_title: titulo,
	  pnotify_text: cuerpo,
	  pnotify_type: tipo,
	  pnotify_hide: true
	}); 
  }
  
  
  })// Document ready Final