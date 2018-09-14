<?php

require 'connection.php';

$sql = "SELECT id,email, senha FROM logins";

$sql = $pdo->prepare($sql);
$sql->execute();

if($sql->rowCount() > 0){
    $dado = $sql->fetchAll();
}


?>

<table>
    <tr>
        <td>ID</td>
        <td>NOME</td>
        <td>E-MAIL</td>
    </tr>

    <?php foreach ($dado as $valor): ?>
    <tr>
        <td><?php echo $valor['id'];?></td>
        <td><?php echo $valor['email'];?></td>
        <td><?php echo $valor['senha'];?></td>
    </tr>


    <?php endforeach; ?>

</table>