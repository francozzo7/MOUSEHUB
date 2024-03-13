<?php

if(!isset($_SESSION)) {
    session_start(); 
}

if(!isset($_SESSION['id'])) {
    die("Para acessar esta página é necesário realizar login.<p><a href=\"index.php\">Fazer login</a></p>");
}

?>