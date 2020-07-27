<?php  

include '../conecta.php';

$ra = $_GET['ra'];

//echo $ra;

$nome = $_POST['nome'];
$email = $_POST['email'];
$telfixo = $_POST['telefone'];
$celular = $_POST['celular'];
$dataNascimento = $_POST['nascimento'];


//echo "$nome <br>";
//echo "$email <br>";
//echo "$dataNascimento <br>";
//echo "$celular <br>";
//echo "$telfixo <br>";

$consulta = $conexao -> prepare("
	UPDATE aluno_cliente SET 
	nome = '$nome',
	email = '$email',
	telfixo = '$telfixo',
	celular = '$celular',
	dataNascimento = '$dataNascimento'

	WHERE ra = '$ra'");

	$consulta -> execute();

	header('location: index.php');

?>