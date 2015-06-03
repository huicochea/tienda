<?php
//Ver. 1.1 Mar-15
	$tpl = new TemplatePower('template/municipios/consulta.tpl');
	$municipio = new Municipios($conn);
	$tpl->prepare();
        $tpl->assign("titulo","Consulta Municipios ");
        $tpl->assign("nuevo","Nuevo Municipio ");
        $lista_municipios = $municipio->lista_municipios();        
        foreach ($lista_municipios as $municipio) {
        	$tpl->newBlock('estados');
			$tpl->assign('id', $municipio['id']);
        		$tpl->assign('nombre', utf8_encode($municipio['nombre']));        	
                        $tpl->assign('id_estado', $municipio['id_estado']);         
        	$tpl->gotoBlock('estados');
        }
	$tpl->printToScreen();	
?>