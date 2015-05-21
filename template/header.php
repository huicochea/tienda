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
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/funciones.js"></script>
    <!--<script src="js/jquery-migrate-1.2.1.js"></script> -->

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
                    <div id='cssmenu'>
                    <ul class="sf-menu">
                       <li><a href='#'><span>Inicio</span></a></li>
                       <li class='active has-sub'><a href='#'><span>Acceder</span></a>
                          <ul>
                             <li class='has-sub'><a id="crealog" href='#'><span>Crear cuenta</span></a></li>
                          </ul>
                       </li>
                       <li><a href='#'><span>About</span></a></li>
                       <li class='last'><a href='#'><span>Contact</span></a></li>
                    </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>


    <!-- Div para registrar un nuevo usuario -->
    <div id="newlog" class="ui-widget" style="display:none">
       <form>
        <fieldset>
          <label for="name">Nombre</label>
          <input type="text" name="name" id="name" value="">
          <br>
          <label for="email">Email</label>
          <input type="text" name="email" id="email" value="">
          <br>
          <label for="password">Contraseña</label>
          <input type="password" name="password" id="password" value="xxxxxxx">
          <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
        </fieldset>
      </form>
    </div>