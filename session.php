<?php
if (!isset($_SESSION['nombre'])){
	          // echo "<script> alert('Pasaste mucho tiempo inactivo, Ingresa nuevamente');</scrip> ";
            // echo"<script type='text/javascript'>
             //       window.location='index.php';
             //   </script>";
  			//exit;
}
else{
  $_username=$_SESSION['nombre'];
}
?>
