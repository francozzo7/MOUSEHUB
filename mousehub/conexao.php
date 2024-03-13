<?php

$usuario = 'root';
$senha = '';
$database = 'mousehub';
$host = 'localhost';

$mysqli = new mysqli($host, $usuario, $senha, $database);

if($mysqli->error) {
    die("Falha ao conectar ao banco de dados: " . $mysqli->error);
}

$mysqli->set_charset("utf8");
