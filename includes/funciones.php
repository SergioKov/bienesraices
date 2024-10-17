<?php

define('TEMPLATES_URL', __DIR__ . '/templates');
define('FUNCIONES_URL', __DIR__ . 'funciones.php');
define('CARPETA_IMAGENES', __DIR__ . '/../imagenes/');

function incluirTemplate( string  $nombre, bool $inicio = false ) {
    include TEMPLATES_URL . "/{$nombre}.php"; 
}

function estaAutenticado() {
    session_start();

    if(!$_SESSION['login']) {
        header('Location: /');
    }

}

function debug($variable){
    
    echo"<style>";
    echo "
        .debug_h3 {
            font-family: consolas;
            background: #060606;
            margin-bottom: -13px;
            color: #d8d8d8;
            padding: 10px;
            border-radius: 5px 5px 0 0;
        }
        .debug_pre {
            padding: 10px;
            background: #f6f6f6;
            border: 1px solid grey;
            border-radius: 0 0 5px 5px;
        }
    ";
    echo"</style>";

    echo"<h3 class='debug_h3'>$" . getVariableName($variable) . ":</h3>";
    echo"<pre class='debug_pre'>";
    var_dump($variable);
    echo"</pre>";
    exit;
}

function getVariableName($var) {
    foreach ($GLOBALS as $key => $value) {
        if ($value === $var) {
            return $key;
        }
    }
    return null;
}