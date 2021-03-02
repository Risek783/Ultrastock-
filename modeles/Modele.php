<?php

/**
 * Classe abstraite pour pouvoir être héritée et non instanciée
 * Permet la connexion à la base de données et
 * l'exécution de requêtes SQL
 */
abstract class Modele
{
    // Statique donc partagée par toutes les instances des classes filles
    static $bdd;

    /**
     * Renvoie un objet de connexion à la BDD en initialisant la connexion à PDO
     */
    protected function getBdd()
    {
        if (self::$bdd === null) {
            self::$bdd = new PDO("mysql:host=127.0.0.1;dbname=tp_gestion_stock", "root", "");
            self::$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        return self::$bdd;
    }

    protected function executerRequete(string $sql, array $params = null)
    {
        if ($params === null) {
            // EFFECTUER UNE REQUETE SANS PARAMETRES
            $resultat = self::getBdd()->query($sql);
        } else {
            // EFFECTUER UNE REQUETE AVEC DES PARAMETRES
            $resultat = self::getBdd()->prepare($sql);
            $resultat->execute($params);
        }
        return $resultat;
    }


}
