<?php
//Versión 1.0 29-Jul-13
include("config.php");
// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else{//Selecciono la base de datos
	mysqli_select_db($conn,$nombre_db);
}
?>