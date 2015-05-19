<?php
require('template/class.TemplatePower.inc.php');
session_start();
include('session.php');

$_SESSION['opcion'] = '1';
$mod = $_POST['mod'];
$acc = $_POST['acc'];
if(!isset($mod)){
    $mod = $_GET['mod'];
    $acc = $_GET['acc'];
}
include('miss/mensajes.php');
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

    //Inicio
    if($mod == 'subasta'){
        include("config/connect.php");
        include("class/productos.php");
        if($acc == "con"){//Consulta cuestionario
            include("subasta/consultaSubasta.php");
        }else if($acc == 'cal'){

        }else if($acc == 'admin'){

       }else if($acc == 'edit'){

       }
       include("config/disconnect.php");
    }

    //Administrar
    //Inicio
    if($mod == 'admin'){
        include("config/connect.php");
        include("class/productos.php");
        if($acc == "con"){//Consulta cuestionario
            include("admin/consultaAdmin.php");
        }else if($acc == 'new'){
            include("admin/formProducto.php");
       }else if($acc == 'edit'){
            include("admin/formProducto.php");
       }else if($acc == 'catl'){
            include("admin/listaCategoria.php");
       }else if($acc == 'catn'){
            include("admin/formCategoria.php");
       }else if($acc == 'savecat'){
            include("admin/saveCat.php");
            include("admin/listaCategoria.php");
       }else if($acc == 'save'){
            include("admin/saveProducto.php");
            include("admin/consultaAdmin.php");
       }else if($acc == 'reporte'){
            //include("admin/reporte.php");
            include("admin/consultaReporte.php");
       }
       include("config/disconnect.php");
    }


}
include('template/footer.php');
?>