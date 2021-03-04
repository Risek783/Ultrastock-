<?php
require_once("../modeles/Modele.php");

class Commande extends Modele
{
    public function addCommande($id_user,$num_commande,$date,$montant)
    {
        $req = "INSERT INTO commandes(id_user,num_commande,date,montant) VALUES( ?, ?, ?, ?)";
        $this->executerRequete($req, [$id_user, $num_commande, $date, $montant]);
    }

    public function addProduitCommande($id_commande, $id_produit, $quantite)
    {
        $req = "INSERT INTO commander(id_commande,id_produit, quantite, prix) VALUES( ?, ?, ?, (SELECT prix FROM produits WHERE id = ? ) * ?)";
        $this->executerRequete($req, [$id_commande, $id_produit, $quantite, $id_produit, $quantite]);
    }

    public function getCommande($id_user)
    {
        $req = "SELECT * FROM commandes WHERE id_user = $id_user ORDER BY date DESC";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}