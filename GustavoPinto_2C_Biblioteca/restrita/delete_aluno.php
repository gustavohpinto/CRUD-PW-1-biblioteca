<?php 

include 'conecta.php';

	$ra = $_GET['ra'];

	$consulta = $conexao -> prepare("DELETE from aluno_cliente where ra=$ra");

header('Location:index.php');

?>