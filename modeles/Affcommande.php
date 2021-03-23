<?php
require_once("../modeles/Modele.php");

class Affcommande extends Modele
{
    public function numCommande($num_commande)

    {
        $req = "SELECT * 
        FROM commander
        WHERE produits = ";
        
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}