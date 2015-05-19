<?php
//Ver. 1.1 Mar-15
	$tpl = new TemplatePower('template/productos/consulta.tpl');
	$tpl->prepare();
	$producto = new Producto($conn);
    $tpl->assign('titulo', "Consulta productos");

	$rowini    = 1;
    $rowfin    = 20;
    $totalrowstrajo = 0;
    if (!is_null($_GET['rini'])) {
        $rowini = $_GET['rini'];
    }
    if (!is_null($_GET['rfin'])) {
        $rowfin = $_GET['rfin'];
    }


	foreach($_POST as $nombre_campo => $valor){
    $asignacion = '$' . $nombre_campo . '=\'' . $valor . '\';';
    if(!is_numeric($nombre_campo))
        @eval($asignacion);
	}

	foreach($_GET as $nombre_campo => $valor){
    $asignacion = '$' . $nombre_campo . '=\'' . $valor . '\';';
    if(!is_numeric($nombre_campo))
        @eval($asignacion);
	}

	$str=" AND id_estatus != 2 AND id_estatus!=3";

	if($cat!=''){
		$str.=" AND p.id_categoria = ".$cat;
	}

	if($buscar!=''){
		$str.=" AND p.nombre like '%$buscar%' ";
	}

    $producto->lista_productos();
    /*
	$lista_productos = $producto->lista_productos($rowini, $rowfin , $str);
	foreach ($lista_productos as $producto) {
		$tpl->newBlock('producto');
			$tpl->assign('id', $producto['id']);
        	$tpl->assign('nombre', $producto['nombre']);        	
        $tpl->gotoBlock('producto');
        $totalrowstrajo = $totalrowstrajo + 1;
	} */


	$rowiniant = $rowini - 20;
    $rowfinant = $rowfin - 20;
    $rowinisig = $rowini + 20;
    $rowfinsig = $rowfin + 20;

  if ($rowini > 1) {
        $anterior = "<a href='control.php?mod=subasta&acc=con&rini=".$rowiniant."&rfin=".$rowfinant."&cat=".$cat."&buscar=".$buscar."'>Anterior</a>";
    } else {
        $anterior = '';
    }
    if ($totalrowstrajo == 20 ) {
    	$siguiente = "<a href='control.php?mod=subasta&acc=con&rini=".$rowinisig."&rfin=".$rowfinsig."&cat=".$cat."&buscar=".$buscar."'>Siguiente</a>";
    } else {
        $siguiente = "";
    }

    if (!isset($_SESSION['estafeta'])){
			$tpl->assign('no', 0);
    }
    else{
        $tpl->assign('no',1);
    }

	$tpl->newBlock('paginado');
		$tpl->assign('anterior', "$anterior");
		$tpl->assign('siguiente', "$siguiente");	
	$tpl->gotoBlock('paginado');

	$tpl->printToScreen();	
?>