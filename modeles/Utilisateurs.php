<?php
require_once('../modeles/Modele.php');

class Utilisateurs extends Modele
{
    public function getUserInfo()
    {
    }

    public function Log($email, $password)
    {
        $req = "SELECT * FROM utilisateurs WHERE email = ?";
        $resultat = $this->executerRequete($req, [$email]);

        if ($resultat->rowCount() == 1) {

            $resultat = $resultat->fetch();
            
            if(password_verify($password, $resultat['password'])){
                session_start();
                $_SESSION['nom'] = $resultat["nom"];
                $_SESSION['prenom'] = $resultat["prenom"];
                $_SESSION['email'] = $resultat["email"];
                $_SESSION['id'] = $resultat["id"];
                $_SESSION['id_role'] = $resultat['id_role'];
                header("location: ../index.php");
            }else{
                // mot de passe incorrect
                echo "mot de passe incorrect";
                header("location: ../pages/connection.php");
            }

        }else{
            // email n'existe pas
            echo "email n'existe pas";
            
        }
    }

    public function Creer($email, $password, $nom, $prenom)
    {          

            $password = password_hash($password, PASSWORD_BCRYPT);
            
            $req = "SELECT * FROM utilisateurs WHERE  email = ?";
            $resultat = $this->executerRequete($req, [$email]);

            if ($resultat->rowCount() == 0) {
                $req = "INSERT INTO utilisateurs(nom, prenom, email, password) VALUES( ?, ?, ?, ?)";
                $this->executerRequete($req, [$nom, $prenom, $email, $password]);
                header("location:  ../pages/connection.php?success=inscr");
            }
        
    }

    public function checkEmail($email)
    {
        $sql = "SELECT * FROM utilisateurs WHERE email = ?";
        $res = $this->executerRequete($sql, [$email]);
        if ($res->rowCount() == 0) {
            return false;
        } else {
            return true;
        }
    }

    public function inscription($email, $password)
    {
        $sql = "INSERT INTO utilisateurs(email,password) VALUES(?,?)";
        $this->executerRequete($sql, [$email, $password]);
     
    }
}
