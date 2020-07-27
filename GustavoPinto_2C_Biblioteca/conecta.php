<?php

header('Content-Type: text/html; charset=UTF-8');

$host = "localhost";
$usuario = "root";
$senha = "";
$banco = "biblioteca";

$conexao = new MySQLi ("$host","$usuario","$senha","$banco");
$conexao -> set_charset("utf8");
// $conexao ->set_charset("utf8");

if($conexao -> connect_error){
    echo"ERRO DE CONEXÃO";
} else {
    //echo "SUCESSO";
}
?>