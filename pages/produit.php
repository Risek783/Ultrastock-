<!DOCTYPE html>
<html style="height: 100%;">

<?php
require_once('../modeles/Produits.php');
require_once('../modeles/Marque.php');
require_once('../modeles/Categorie.php');
include("../templates/header_home.php");

$Produit = new Produits;
$Marque = new Marque;
$Categorie = new Categorie;

$id_produit = $_GET['id'];

$info_produit = $Produit->recupererProduitbyId($id_produit);
$categorie_list = $Categorie->recupererCategorie($id_produit);
$marque_produit = $Marque->recuperermarque($id_produit);
$marque_nom = $Marque->recuperermarquename($marque_produit[0]['id_marque']);

?>

<section class="background">
    <div class="row">
        <article class="article_produit2 col-lg-7">
            <div id="image" style="margin:2vh">
                <img class="card-img" style="max-height: 40vh; object-fit:cover;border-radius:15px;"
                    src=" <?= $info_produit[0]['image'] ?>">
            </div>
            
            <div style="margin:3vh" class="text-center">
                <div style="margin:3vh">
                    <h3 style="float: left"><b><u><?= $info_produit[0]['nom']?></u></b> </h3>
                    <h3 style="float: right"><b><u><?= $marque_nom[0]['nom']?></u></b> </h3>
                </div>
                <hr> <br> <br>
                    <?php foreach ($categorie_list as $cat) { ?>
                        <button type=button class="pti_collapsible2 col-lg-3">
                            <span style="text-align: center;"><?= $cat['nom'] ?> </span>
                        </button>
                    <?php
                    }
                    ?>
                </div>
                <hr>
            <form method="post" action="../traitements/insererDansPanier.php">
                <button id="btn_panier" name="produit" value="<?= $id_produit ?>"
                    type="submit" class="bouton-panier">
                    <span style="text-align: center;">Ajouter au panier <i
                            class="fas fa-cart-arrow-down"></i> </span>
                </button>
            </form>
        </article> 
        <article class="article_produit3 col-lg-4">
            <hr>
            <div style="overflow-y:auto; height:90%; font-size:24px">
                <?= $info_produit[0]['description']?>   
            </div>
            <hr>
        </article>
    </div> 
</section>

