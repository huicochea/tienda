<?php
//Ver. 1.1 Mar-15
	$tpl = new TemplatePower('template/subasta/consultaSubasta.tpl');
	$tpl->prepare();
	$producto = new Producto($conn);

	$rowini    = 1;
    $rowfin    = 12;
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

	$lista_productos = $producto->lista_productos($rowini, $rowfin , $str);
	foreach ($lista_productos as $producto) {
		$tpl->newBlock('producto');
			$tpl->assign('id', $producto['id']);
        	$tpl->assign('nombre', $producto['nombre']);
        	$tpl->assign('descripcion', $producto['descripcion']);
        	$tpl->assign('precio', $producto['precio_ini']);
        	$tpl->assign('foto_muestra', $producto['foto_muestra']);
        	$tpl->assign('foto', $producto['foto']);
        $tpl->gotoBlock('producto');
        $totalrowstrajo = $totalrowstrajo + 1;
	}

	$producto = new Producto($conn);
	$lista_categorias = $producto->lista_categorias();
	$aux = 1;
	foreach ($lista_categorias as $categoria) {
		$tpl->newBlock('categoria');
        	$tpl->assign('id', $categoria['id']);
        	$tpl->assign('nombre', $categoria['nombre']);
        	if($aux==1){
        		$tpl->assign('class', "odd");
        		$aux=0;
        	}
        	else{
        	    $tpl->assign('class', "even");
        		$aux=1;	
        	}
        $tpl->gotoBlock('categoria');
	}

	$rowiniant = $rowini - 12;
    $rowfinant = $rowfin - 12;
    $rowinisig = $rowini + 12;
    $rowfinsig = $rowfin + 12;

  if ($rowini > 1) {
        $anterior = "<a href='control.php?mod=subasta&acc=con&rini=".$rowiniant."&rfin=".$rowfinant."&cat=".$cat."&buscar=".$buscar."'>Anterior</a>";
    } else {
        $anterior = '';
    }
    if ($totalrowstrajo == 12 ) {
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