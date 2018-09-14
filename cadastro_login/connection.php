<?php

try{
    $url = 'mysql:dbname=cadastro;host=localhost';
    $user = 'root';
    $pass = '';

    $pdo = new PDO($url, $user, $pass);

}catch(PDOException $ex){
    echo 'Erro: '.$ex->getMessage();
}

?>