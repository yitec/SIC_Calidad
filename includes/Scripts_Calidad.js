  $(document).ready(function(){
  
  
  //***************************************************Guardar categori******************************************
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
  
		
	
		$.ajax({
        type: "POST",
		async: false,
        url: "operaciones/Clase_Calidad.php",
		data: "metodo=crea_categorias&txt_nombre="+$('#txt_nombre').val(),
		 		
		success: function(datos){


		if (datos=="Success"){
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