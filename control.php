<?php
require('template/class.TemplatePower.inc.php');
session_start();
include('session.php');

$mod = $_POST['mod'];
$acc = $_POST['acc'];
if(!isset($mod)){
    $mod = $_GET['mod'];
    $acc = $_GET['acc'];
}
include('template/header.php');

if(isset($mod)){

    if($mod == 'conf'){
        if(isset($acc)){
            if($acc == "init"){        
                $tpl = new TemplatePower('template/configuracion.tpl');
                $tpl->prepare();
                $tpl->printToScreen();
            }
        }
    }

    //Productos
    if($mod == 'productos'){
      include("config/connect.php");
      include("class/productos.php");
        if($acc == "con"){
            include("productos/consulta.php");
        }else if($acc == 'cal'){

        }else if($acc == 'admin'){

       }
      include("config/disconnect.php");
    }
}
include('template/footer.php');
?>