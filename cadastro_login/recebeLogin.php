<?php

require 'connection.php';

$email = addslashes($_POST['email']);
$senha = addslashes($_POST['pass']);


if($email != null && $senha != null){

    $sql = "INSERT INTO logins (email, senha) VALUES (:email, :senha)";
    $sql = $pdo->prepare($sql);
    $sql->bindValue(":email", $email);
    $sql->bindValue(":senha", $senha);
    $sql->execute();

    echo 'Cadastrado com sucesso!!!';
}else{
    echo 'Erro ao cadastrar !!!';
}









?>