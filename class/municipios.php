<?php
//Versión 1.1 Ago-13
    class Municipios{
		private $id;
		private $nombre;
        private $id_estado;
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

                function getId_estado() {
                    return $this->id_estado;
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

                function setId_estado($id_estado) {
                    $this->id_estado = $id_estado;
                }        

                function setVlrValido($vlrValido) {
                    $this->vlrValido = $vlrValido;
                }

                function setMensaje($mensaje) {
                    $this->mensaje = $mensaje;
                }

         

                                
				//Funciones 
				public function lista_municipios(){
					if ($this->vlrValido) {
                        $lista = array();
                        $sql="SELECT * FROM municipio";                 
                        $result=mysqli_query($this->conexion,$sql) or die ('No se ejecuto el query. '. mysqli_error($this->conexion));
                        
                        if ($result=mysqli_query($this->conexion,$sql))
                        {
                          // Fetch one and one row
                          while ($row=mysqli_fetch_row($result))
                            {                                
                                $item=array("id"=>$row[0],
                                            "nombre"=>$row[1],
                                            "id_estado"=>$row[2]);
                                array_push($lista, $item);
                            }
                          mysqli_free_result($result);
                        }
                        return $lista;   
                    }			
				}

						
		        public function save_estado(){
		        	
		        }
		   
		        public function update_estado(){
		            
		        } 
   
	}
?>