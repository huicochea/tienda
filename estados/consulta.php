<?php
//Ver. 1.1 Mar-15
	$tpl = new TemplatePower('template/estados/consulta.tpl');
	$estado = new Estados($conn);
	$tpl->prepare();
        $tpl->assign("titulo","Consulta Estados ");
        $tpl->assign("nuevo","Nuevo estado ");
        $lista_estados = $estado->lista_estados();        
        foreach ($lista_estados as $estado) {
        	$tpl->newBlock('estados');
				$tpl->assign('id', $estado['id']);
        		$tpl->assign('nombre', utf8_encode($estado['nombre']));        	
        	$tpl->gotoBlock('estados');
        }
	$tpl->printToScreen();	
?>