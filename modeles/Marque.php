<?php
require_once("../modeles/Modele.php");

class Marque extends Modele
{
    public function recuperermarque($id_marque)
    {
        $req = "SELECT * FROM marque WHERE id = $id_marque";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}
