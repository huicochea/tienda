<?php
//Versión 1.1 Ago-13
    class Producto{
		private $id;
		private $nombre;
		private $descripcion;
		private	$precio_ini;
		private	$precio_final;
		private	$id_estatus;
        private	$f_alta;
        private	$f_baja;
        private	$id_tienda;
        private	$id_categoria;               
		private $vlrValido;
		private $mensaje;
		var $conexion;
	
		function __construct($value) {
			$this->conexion=$value;
			$this->vlrValido = TRUE;
			$this->exito =FALSE;
		}
	
                function getId() {
                    return $this->id;
                }

                function getNombre() {
                    return $this->nombre;
                }

                function getDescripcion() {
                    return $this->descripcion;
                }

                function getPrecio_ini() {
                    return $this->precio_ini;
                }

                function getPrecio_final() {
                    return $this->precio_final;
                }

                function getId_estatus() {
                    return $this->id_estatus;
                }

                function getF_alta() {
                    return $this->f_alta;
                }

                function getF_baja() {
                    return $this->f_baja;
                }

                function getId_tienda() {
                    return $this->id_tienda;
                }

                function getId_categoria() {
                    return $this->id_categoria;
                }

                function getVlrValido() {
                    return $this->vlrValido;
                }

                function getMensaje() {
                    return $this->mensaje;
                }


                function setId($id) {
                    $this->id = $id;
                }

                function setNombre($nombre) {
                    $this->nombre = $nombre;
                }

                function setDescripcion($descripcion) {
                    $this->descripcion = $descripcion;
                }

                function setPrecio_ini($precio_ini) {
                    $this->precio_ini = $precio_ini;
                }

                function setPrecio_final($precio_final) {
                    $this->precio_final = $precio_final;
                }

                function setId_estatus($id_estatus) {
                    $this->id_estatus = $id_estatus;
                }

                function setF_alta($f_alta) {
                    $this->f_alta = $f_alta;
                }

                function setF_baja($f_baja) {
                    $this->f_baja = $f_baja;
                }

                function setId_tienda($id_tienda) {
                    $this->id_tienda = $id_tienda;
                }

                function setId_categoria($id_categoria) {
                    $this->id_categoria = $id_categoria;
                }

                function setVlrValido($vlrValido) {
                    $this->vlrValido = $vlrValido;
                }

                function setMensaje($mensaje) {
                    $this->mensaje = $mensaje;
                }

         

                                
				//Funciones 
				public function lista_productos(){
					
					$lista = array();
					$sql="SELECT * FROM productos WHERE 1";					
					$result=mysqli_query($this->conexion,$sql) or die ('No se ejecuto el query. '. mysqli_error($this->conexion));
					
					if ($result=mysqli_query($this->conexion,$sql))
					{
					  // Fetch one and one row
					  while ($row=mysqli_fetch_row($result))
					    {
					    	//printf ("%s (%s)\n",$row[0],$row[1]);
					    }
					  // Free result set
					  mysqli_free_result($result);
					}
					

				}

						
		        public function save_producto(){
		        	
		        }
		   
		        public function update_cat($nombre,$id){
		            
		        } 
   
	}
?>