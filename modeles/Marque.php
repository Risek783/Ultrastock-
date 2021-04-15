<?php
require_once("../modeles/Modele.php");

class Marque extends Modele
{
    public function recuperermarque($id_marque)
    {
        $req = "SELECT id_marque FROM produits WHERE id = $id_marque";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }

    public function recuperermarquename($id_marque)
    {
        $req = "SELECT nom FROM marque WHERE id = $id_marque";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}
