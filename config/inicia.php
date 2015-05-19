<?php
session_start();
if (is_null($_SESSION["credencial"])){
}
else{
  header('Location: session.php');
}
?>