<?php 
try {
    $dsn = "mysql:dbname=blog;host=localhost";
    $user = "root";
    $pass = "";

    $pdo = new PDO($dsn, $user, $pass);


} catch(PDOException $e){
    die($e->getMessage());
}

/*
1 Calcular a quantidade total de paginas.
2 Definir o $p Limit;
3 Definir a quantidade por paginas;
3 Fazer a query com LIMIT
*/

$qt_por_pagina = 5;

$total = 0;

$sql = "SELECT COUNT(*) as c FROM posts";
$sql = $pdo->query($sql);
$sql = $sql->fetch();
$total = $sql['c'];
$paginas = $total / $qt_por_pagina;

$p = 0;

$pg = 1;
if(isset($_GET['p'])  && !empty($_GET['p']) ){
    $pg = addslashes($_GET['p']);
}

$p = ($pg - 1) * $qt_por_pagina;

$sql = "SELECT * FROM posts LIMIT $p, $qt_por_pagina";
$sql = $pdo->query($sql);

if($sql->rowCount() > 0){

    foreach($sql->fetchAll() as $item){

        echo $item['id'].' - '.$item['titulo'].'<br/>';

    }

}

echo '<hr/>';
for($q=0;$q<$paginas;$q++){

    echo '<a href="./?p='.($q+1).'">[ '.($q+1).' ]<a/>';

}

?>