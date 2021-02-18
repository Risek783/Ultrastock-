<?php
require_once("../modeles/Modele.php");

class Produits extends Modele
{
    public function recuperermarque($id_marque)
    {
        $req = "SELECT * FROM marque WHERE id = $id_marque";
        return $this->executerRequete($req);
    }
}
