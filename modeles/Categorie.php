<?php
require_once("../modeles/Modele.php");

class Categorie extends Modele
{
    public function recupererCategorie($id_produit)
    {
        $req = "SELECT *
            FROM categorie P
            JOIN categoriser C
            ON C.id_cat = P.id 
            AND C.id_produit = $id_produit";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}
