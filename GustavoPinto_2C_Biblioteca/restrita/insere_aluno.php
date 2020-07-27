<?php

    include '../conecta.php';
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $celular = $_POST['celular'];
    $nascimento = $_POST['nascimento'];
    $turma = $_POST['select'];

    // echo $nome; -> teste 

    $consulta = $conexao -> prepare("INSERT INTO aluno (nome, email, turma, telFixo, telcel, dataNasc) VALUES ('$nome', '$email', '$turma', '$telefone', '$celular', '$nascimento') ");
    
    $consulta -> execute();
    header('Location: index.php')
?>