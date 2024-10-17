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
    echo"<h1 style='font-family: consolas;'>Variable: $" . getVariableName($variable) . "</h1>";
    echo"<pre style='padding:5px; background:#f6f6f6;border:1px solid grey;border-radius:5px;'>";
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