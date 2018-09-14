<?php
class Usuarios {

    private $db;

    public function __construct(){

        try{ 
        $this->db = new PDO("mysql:dbname=blog;host=localhost", "root", "");
        }catch(PDOException $e){
            echo "Falha: ".$e->getMessage();
        }
    }


    public function selecionar($id){


        $sql = $this->db->prepare("SELECT * FROM usuarios WHERE id = :id");
        $sql->bindValue(":id", $id);
        $sql->execute();
        $dado = array();
        if($sql->rowCount() > 0){
            $dado = $sql->fetch();
        }

        return $dado;
    }


    public function inserir($nome, $email, $senha){

        if($this->verificarEmail($email) == false){

                $sql = "INSERT INTO usuarios (nome, email, senha) VALUES (:nome, :email, :senha); ";
                $sql = $this->db->prepare($sql);
                $sql->bindValue(":nome", $nome);
                $sql->bindValue(":email", $email);
                $sql->bindValue("senha", md5($senha));
                $sql->execute();

        }

    }

    public function atualizar($id, $nome , $email, $senha){

        if($this->verificarEmail($email)){

            $sql = "UPDATE usuarios SET nome = :nome , email = :email , senha = :senha WHERE id = :id";
            $sql = $this->db->prepare($sql);
            $sql->bindValue(":nome", $nome);
            $sql->bindValue(":email", $email);
            $sql->bindValue(":senha", md5($senha));
            $sql->bindValue(":id", $id);
            $sql->execute();
        }

    }

    public function excluir($id){

        $sql = "DELETE FROM usuarios WHERE id = ?";
        $sql = $this->db->prepare($sql);
        $sql->bindValue(1 , $id);
        $sql->execute();

    }


    public function verificarEmail($email){

        $sql = "SELECT email FROM usuarios WHERE email = :email";
        $sql = $this->db->prepare($sql);
        $sql->bindValue(":email", $email);
        $sql->execute();

        if($sql->rowCount() > 0){
            return true;
        }else{
            return false;
        }

    }

}

