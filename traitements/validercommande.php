<?php
session_start();
require_once('../modeles/Commande.php');

$Commande = new Commande;

if (!isset($_SESSION['id'])) {
    header("location: ../traitements/deconnexion.php?error=accesinterdit");

}else{

   $user_id = $_SESSION['id'];
   $montant = $_GET['prix'];
   $date = date("Y-m-d H:i:s");
   $num_commande = mt_rand() . "\n";
   
   $Commande -> addCommande($user_id,$num_commande,$date,$montant);
   $liste_commande = $Commande -> getCommande($_SESSION['id']);
   
    foreach($_SESSION['panier'] as $id_produit => $produit_commander){
        $Commande->addProduitCommande($liste_commande[0]['id'], $id_produit);
    }

   header("location:../pages/merci.php"); 
}
