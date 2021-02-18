<?php
require_once("modeles/Modele.php");

class Register extends Modele
{
    public function Creer()
    {
        if (isset($_POST['formsend'])) {

            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $cpassword = $_POST['cpassword'];

            if ($password == $cpassword){
                $password = password_hash($password, PASSWORD_BCRYPT);
            }
            
            $req = "SELECT * FROM utilisateurs WHERE  email = ?";
            $resultat = $this->executerRequete($req, [$email]);

            if ($resultat->rowCount() == 0) {
                $req = "INSERT INTO utilisateurs(nom, prenom, email, password) VALUES( ?, ?, ?, ?)";
                $this->executerRequete($req, [$nom, $prenom, $email, $password]);
                header("location:  connection.php");
            }
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
}
