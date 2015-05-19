
  <div id="main_content">
   
    <div class="left_content">
      <div class="title_box">Categorias </div>
      <ul class="left_menu">
        <!-- START BLOCK : categoria -->
        <li class="{class}"><a href="control.php?mod=subasta&acc=con&rini=0&rfin=12&cat={id}">{nombre}</a></li>
         <!-- END BLOCK : categoria -->   
      </ul>


    </div>

    <div class="center_content">
      <form action="control.php?mod=subasta&acc=con&rini=0&rfin=12" method="post">
        <input class="center_title_bar" type="text" placeholder="BUSCAR" name="buscar">
        <input type="submit" name="enviar" value="BUSCAR">
      </form>
      <!-- START BLOCK : producto -->
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
          <div class="product_title"><a href="#" class="detalle" id="{precio}" name="{id}">{nombre}</a></div>
          <div class="product_img"><a href="#"><img src="{foto_muestra}" class="detalle"  id="{precio}" name="{id}" alt="" border="0" height="92" width="92" /></a></div>
          <div class="prod_price"><span class="reduce"></span> <span class="price">${precio}</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="#" class="detalle2" id="{precio}" name="{id}" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"> <!--<img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"> <img src="images/favorites.gif" alt="" border="0" class="left_bt" /> --></a> <a href="#" class="prod_details detalle" name="{id}">detalles</a> </div>
      </div>
      <!-- END BLOCK : producto -->       

    </div>
    <!-- START BLOCK : paginado -->
      
        <center> <h2> {anterior} | {siguiente} </h2> </center>
            
    <!-- END BLOCK : paginado -->   
    
  </div>

  <div class="footer">
    
  </div>
</div>


</div>


<div style = 'display: none;' id="detalles" title="DETALLES"  style="text-align:left;">
    <table class="adminlist">
      <tr>        
        <td style="font-size: 13px;" width='190'><strong>NOMBRE: </strong></td>
        <td style="font-size: 13px;" width='80'><strong>CATEGORIA: </strong></td>
        <td style="font-size: 13px;" width='440'><strong>DESCRIPCION: </strong></td>
        <td style="font-size: 13px;" width='70'><strong>PRECIO:</strong> </td>
      </tr>
      <tr>
        <td style="font-size: 14px;"><span id="nombrep"> </span></td>
        <td style="font-size: 14px;"><span id="categoriap">  </span></td>
        <td style="font-size: 14px;"> <span id="descripcionp">  </span></td>
        <td style="font-size: 14px;">$<span id="preciop"></span></td>
      </tr>

      <tr>
        <td colspan="4"> <span id="imagenp"></span> </td>
      </tr>
    </table>    
</div>

<div style = 'display: none;' id="subasta" title="SUBASTA"  style="text-align:left;">
    <table class="adminlist">
      <tr align="left">
        <th>ESTAFETA: <input type="text" name="estafetasu" id="estafetasu" > </th>
        <th>CANTIDAD:  $<input type="text" name="preciosu" id="preciosu" > </th>       
      </tr>
      <tr>
        <td colspan="2"><h2> NOMBRE: <span id="empleado"></span> </h2></td>
      </tr>
    </table>    
</div>


<script type="text/javascript">
  $(document).ready(function(){
      $(".detalle").click(function(event){
        event.preventDefault();
        var precio =  $(this).attr("id");

        $("#imagenp").html("<br><br><center> <img src='images/loading.gif' height='360px' width='360px'> </center>");
        var id_producto =  $(this).attr("name");
        $("#nombrep").text("");
        $("#categoriap").text("");
        $("#descripcionp").text("");
        $("#preciop").text("");        
        $("#loading").dialog({
                  resizable: false,
                      height:130,
                      width:130,
                      modal: true
                  });    
        
        $( "#detalles" ).dialog({
            resizable: false,
            height:630,
            width:890,
            modal: true,
            buttons: {
              SUBASTAR: function() {
                 $("#subasta").dialog({
                  resizable: false,
                      height:170,
                      width:340,
                      modal: true,
                      buttons: {
                        ACEPTAR: function() {
                            var psugiere = $("#preciosu").val();
                            precio = parseInt(precio);
                            psugiere =  parseInt(psugiere);

                            var exito = true;
                            if($.trim($("#estafetasu").val()) == ''){
                              alert("Introduce una estafeta");
                              exito = false;
                            }
                            if($.trim($("#preciosu").val()) == ''){
                              alert("Introduce una cantidad");
                              exito = false;
                            }
                            if($("#empleado").text()==""){
                             alert("Estafeta no valida");
                              exito = false; 
                            }
                            if(precio > psugiere){
                             alert("La subasta debe ser mayor");
                              exito = false; 
                            }
                            if(exito){
                                    $.ajax({
                                          type: "GET",
                                          url: "admin/subastaProducto.php",
                                          dataType: "html",
                                            data: {
                                                  estafeta: $.trim($("#estafetasu").val()),
                                                  precio : $.trim($("#preciosu").val()),
                                                  id_producto : id_producto
                                            },
                                          success: function( data ) {
                                              if(data ==1){
                                                alert("Se guardo tu registro.");
                                                window.location='index.php';
                                              }
                                              if(data == 2){
                                               alert("La estafeta no existe o el pleado ha sido dado de baja."); 
                                              }                               
                                              if(data == 3){
                                                alert("Error!!!");
                                              }                                              
                                              $( "#subasta" ).dialog( "close" ); 
                                              $( "#detalles" ).dialog( "close" ); 
                                              $("#estafetasu").val('');
                                              $("#preciosu").val(''); 

                                          },                                          
                                          error : function(){
                                            alert("Error 404");
                                          }
                                    }).done(function(){

                                    });                                                                                                                      
                            }
                        },
                        CANCELAR: function() {
                          $( this ).dialog( "close" );  
                        }
                      }
                  });                
              },
              CERRAR: function() {
                $( this ).dialog( "close" );  
              }
            }
        });

      $.ajax({
            type: "GET",
            url: "admin/consultaProducto.php",
            dataType: "json",
              data: {
                    id: $(this).attr("name")
              },
            success: function( data ) {
                $("#nombrep").text(data['nombre']);
                $("#categoriap").text(data['categoria']);
                $("#descripcionp").text(data['descripcion']);
                $("#preciop").text(data['precio_ini']);
                $("#imagenp").html("<center><img src='"+data['foto']+"' height='460px' width='460px'></center>");                
                $("#loading").dialog( "close" );                      
            }
      });

      }) //Termina

          
          $(".detalle2").click(function(event){
            event.preventDefault();
            var id_producto =  $(this).attr("name");
            var precio =  $(this).attr("id");
         

            $("#subasta").dialog({
                  resizable: false,
                      height:170,
                      width:340,
                      modal: true,
                      buttons: {
                        ACEPTAR: function() {
                             var psugiere = $("#preciosu").val();
                              precio = parseInt(precio);
                              psugiere =  parseInt(psugiere);

                            var exito = true;
                            if($.trim($("#estafetasu").val()) == ''){
                              alert("Introduce una estafeta");
                              exito = false;
                            }
                            if($.trim($("#preciosu").val()) == ''){
                              alert("Introduce una cantidad");
                              exito = false;
                            }
                            if($("#empleado").text()==""){
                             alert("Estafeta no valida");
                              exito = false; 
                            }                                                    
                            if(precio > psugiere){
                             alert("La subasta debe ser mayor");
                              exito = false; 
                            }

                            if(exito){
                                    $.ajax({
                                          type: "GET",
                                          url: "admin/subastaProducto.php",
                                          dataType: "html",
                                            data: {
                                                  estafeta: $.trim($("#estafetasu").val()),
                                                  precio : $.trim($("#preciosu").val()),
                                                  id_producto : id_producto
                                            },
                                          success: function( data ) {
                                              if(data ==1){
                                                alert("Se guardo tu registro.");
                                                window.location='index.php';                
                                              }
                                              if(data == 2){
                                               alert("La estafeta no existe o el pleado ha sido dado de baja."); 
                                              }                               
                                              if(data == 3){
                                                alert("Error!!!");
                                              }
                                              $("#subasta").dialog( "close" );                                                                                          
                                          },                                          
                                          error : function(){
                                            alert("Error 404");
                                          }
                                    }).done(function(){

                                    });                                                                                                                      
                            }
                        },
                        CANCELAR: function() {
                          $("#estafetasu").val('');
                          $("#preciosu").val('');
                          $( this ).dialog( "close" );  
                        }
                      }
                  });
              });


  $( "#estafetasu" ).focusout(function() {  

    if($.trim($("#estafetasu").val()) != ''){
      $.ajax({
            type: "GET",
            url: "admin/consultaEmpleado.php",
            dataType: "html",
              data: {
                    estafeta: $("#estafetasu").val()
              },
            success: function( data ) {
              $("#empleado").text(data);
            }
      });
    }
    else{

    }

  });


});//Termina ready



</script>
    