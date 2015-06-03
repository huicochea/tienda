<?php
//Ver. 1.1 Mar-15
	$tpl = new TemplatePower('template/admin/consulta.tpl');
	$tpl->prepare();
        $tpl->assign("titulo","Administrar");
        
	$tpl->printToScreen();	
?>