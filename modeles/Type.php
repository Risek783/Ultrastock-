<?php
require_once("../modeles/Modele.php");

class Type extends Modele
{
    public function getType()
    {
        $req = "SELECT * FROM type";
        return $this->executerRequete($req)->fetchall(PDO::FETCH_ASSOC);
    }
}
