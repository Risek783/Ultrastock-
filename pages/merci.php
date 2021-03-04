<!DOCTYPE html>
<html style="height: 100%;">
<?php
include("../templates/header_panier.php");
require_once('../modeles/Commande.php');

$Commande = new Commande;
$liste_commande = $Commande -> getCommande($_SESSION['id']);

?>


<section class="background">
    <div class="container panier_case">
        <div class="card mt-4 shadow">
            <div class="card-header" style="border-bottom: 1px solid black; background:rgba(88, 164, 214, 0.568)">
                <h4>Commande Validée !</h4>
            </div>
            <div class="card-body" style="text-align:center">
                    Merci d'avoir commander ! Votre numero de commande est le: 
                    <br><h5> <?= $liste_commande[0]['num_commande']?> </h5>
                </div>
                </div>
            <div class="card-header text-right" style="border-top: 1px solid black; background:rgba(88, 164, 214, 0.568); align-items:center">
                <a href="./accueil.php" class="btn btn-primary">Retour à la boutique</a>
            </div>
        </div>
    </div>
</section>