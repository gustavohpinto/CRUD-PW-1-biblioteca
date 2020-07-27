<?php
    include '../conecta.php';
    $titulo = $_POST['titulo'];
    $autor = $_POST['autor'];
    $editora = $_POST['editora'];
    $paginas = $_POST['paginas'];
    $genero = $_POST['select'];
    $exemplares = $_POST['exemplares'];
   
    $consulta = $conexao -> prepare("INSERT INTO livro (titulo, autor, editora, pags, qtdeExemplares, genero ) VALUES ('$titulo', '$autor', '$editora', '$paginas','$exemplares', '$genero' ) ");
    
    $consulta -> execute();
    header('Location: index.php');
?>