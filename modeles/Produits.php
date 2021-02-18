<?php
require_once("../modeles/Modele.php");

class Produits extends Modele
{

    public function ajouter($categorie, $nom, $prix, $quantite, $commentaire, $image)
    {

        $req = "INSERT INTO produits(nom, categorie, prix, quantite, commentaire, image) VALUES( ?, ?, ?, ?, ?, ?)";
        $this->executerRequete($req, [$nom, $categorie, $prix, $quantite, $commentaire, $image]);
    }

    public function recupererproduit()
    {
        $req = "SELECT * FROM produits";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }

    public function recupererProduitParCategorie($id_cat)
    {
        $req = "SELECT *
            FROM produits P
            JOIN categoriser C
            ON C.id_produit = P.id 
            AND C.id_cat = $id_cat";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }

    public function recupererProduitParType($id_type)
    {
        $req = "SELECT *
            FROM produits WHERE id_type = $id_type";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }

    public function recupereProduitsByIds($ids)
    {
         $req = "SELECT id, prix, nom, image
                 FROM produits
                 WHERE ";
        
        foreach($ids as $id){
            $req .= "id = $id OR ";
        }

        $req = substr($req, 0, -3);

        return $this->executerRequete($req)->fetchAll(PDO::FETCH_ASSOC);
    }
}