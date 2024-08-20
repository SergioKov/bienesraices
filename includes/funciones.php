<?php

require 'app.php';

function incluirTemplate( string  $nombre, bool $inicio = false, $from_admin = false ) {
    include TEMPLATES_URL . "/{$nombre}.php"; 
}

function incluirTemplateAdmin( string  $nombre, bool $inicio = false, $from_admin = false ) {
    //echo $nombre;
    //echo"<br>";
    //echo $from_admin;
    //echo"<br>";
    
    include TEMPLATES_URL . "/{$nombre}.php"; 
}

function estaAutenticado() : bool {
    session_start();

    $auth = $_SESSION['login'];
    if($auth) {
        return true;
    }
    return false;
}