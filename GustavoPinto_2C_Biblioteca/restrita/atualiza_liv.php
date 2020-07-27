<?php  

include '../conecta.php';

$codLivro = $_GET['codLivro'];

$titulo = $_POST['titulo'];
$autor = $_POST['autor'];
$editora = $_POST['editora'];
$paginas = $_POST['paginas'];
$genero = $_POST['genero'];
$qtdExemplares = $_POST['qtdExemplares'];

$consulta = $conexao -> prepare("
	UPDATE livro SET 
	titulo = '$titulo',
	autor = '$autor', 
	editora = '$editora', 
	paginas = '$paginas',
	genero = '$genero',
	qtdExemplares = '$qtdExemplares'


	WHERE codLivro = '$codLivro'");

	$consulta -> execute();

	header('location: index.php');

?>