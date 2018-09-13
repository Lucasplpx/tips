<?php

class Usuario {

    private $id;
    private $email;
    private $senha;
    private $nome;

    private $pdo;


    public function __construct($id=null){

        try {
            $this->pdo = new PDO("mysql:dbname=usuarios;host=localhost", "root", "");
        } catch(PDOException $e){
            echo "Erro ".$e->getMessage();
        }

        if(!empty($id)){
            $sql = "SELECT * FROM usuarios WHERE  id = ?";
            $sql = $this->pdo->prepare($sql);
            $sql->execute(array($id));

            if($sql->rowCount() > 0){
                $data = $sql->fetch();
                $this->id = $data['id'];
                $this->email = $data['email'];
                $this->senha = $data['senha'];
                $this->nome = $data['nome'];

            }

        }
    }

    public function getId(){
        return $this->id;
    }

    public function setEmail($email){
        $this->email = $email;
    }

    public function getEmail(){
        return $this->email;
    }


    public function setSenha($senha){
        $this->senha = md5($senha);
    }

    public function getSenha(){
        return $this->senha;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }

    public function getNome(){
        return $this->nome;
    }

    public function salvar(){
        if(!empty($this->id)){
            $sql = "UPDATE usuarios 
            SET email = ?, senha = ?, nome = ? WHERE id = ? ";
            $sql = $this->pdo->prepare($sql);
            $sql->execute(array($this->email,
                                $this->senha,
                                $this->nome,
                                $this->id));

        } else {
            $sql = "INSERT INTO usuarios 
            SET email = ?, senha = ?, nome = ?";
            $sql = $this->pdo->prepare($sql);
            $sql->execute(array($this->email,
                                $this->senha,
                                $this->nome));
        }
    }

    public function delete() {
        $sql = "DELETE FROM usuarios WHERE id = ?";
        $sql = $this->pdo->prepare($sql);
        $sql->execute(array($this->id));
    }

}

?>