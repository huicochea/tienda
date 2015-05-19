<?php 
	session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TIENDA</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
    <script src='js/device.min.js'></script> 
</head>

<body>
<div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>
        <div id="stuck_container" class="stuck_container">
            <div class="container">
                <div class="brand">
                    <h1 class="brand_name">
                        <a href="./">TIENDA</a>
                    </h1>
                </div>
                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                            <a href="control.php?mod=productos&acc=con">INICIO</a>
                        </li>
                        <li>
                            <a href="control.php?mod=admin&acc=con">ADMINISTRAR</a>
                            <ul>
                                <li>
                                    <a href="#">PRODUCTOS</a>
                                </li>
                                <li>
                                    <a href="#">TIENDAS</a>
                                    <ul>
                                        <li>
                                            <a href="#">Lorem</a>
                                        </li>
                                        <li>
                                            <a href="#">Dolor</a>
                                        </li>
                                        <li>
                                            <a href="#">Sit amet</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Vivamus eget nibh</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="control.php?mod=lugares&acc=con">LUGARES</a>
                        </li>
                        <li>
                            <a href="control.php?mod=promociones&acc=con">PROMOCIONES</a>
                        </li>
                        <li>
                            <a href="control.php?mod=contacto&acc=con">CONTACTO</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>