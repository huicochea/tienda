$(document).ready(function(){

	$("#crealog").click(function(event){
		event.preventDefault();
		$( "#newlog" ).dialog({
			resizable: true,
            height:470,
            width:640,
            modal: true,
            buttons: {
                    CREAR: function() {

                     },
                     CERRAR: function() {
                     	$( this ).dialog( "close" );  
                    }                      	
            }
		});
  	});

});//Termina Ready

function cambiacolor_over(celda){ celda.style.backgroundColor="#ffff30" } 
function cambiacolor_out(celda){ celda.style.backgroundColor="#ffffff" }
