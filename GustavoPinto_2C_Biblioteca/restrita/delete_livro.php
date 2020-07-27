<?php 

include 'conecta.php';

	$codLivro = $_GET['codLivro'];

	$consulta = $conexao -> prepare("DELETE from livro where codLivro = $codLivro");

header('Location:index.php');

?>