<!DOCTYPE html>
<html style="height: 100%;">
<?php
include("../templates/header_panier.php");
require_once('../modeles/Produits.php');
require_once('../modeles/Categorie.php');
require_once('../modeles/Type.php');

//require_once('../traitements/insererDansPanier.php');

?>


<section class="background">
    <div class="container panier_case">
        <div class="card mt-4 shadow">
            <div class="card-header" style="border-bottom: 1px solid black; background:rgba(88, 164, 214, 0.568)">
                <h4>Panier</h4>
            </div>
            <?php
            $prix_panier = 0;
            if (!empty($_SESSION["panier"])) {

                $ids = [];

                foreach ($_SESSION["panier"] as $idproduit => $produit) {
                    $ids[] = $idproduit;
                }

                $Produit = new Produits();
                $listeProduits = $Produit->recupereProduitsByIds($ids);

                foreach ($listeProduits as $key => $produit) {
                    $listeProduits[$key]["quantite"] = $_SESSION["panier"][$produit["id"]]["quantite"];
                }
            ?>
            <div class="card-body">
                <?php
                    foreach ($listeProduits as $produit) {
                    }
                    ?>

                <ul class="list-group">

                    <?php

                        foreach ($listeProduits as $produit) {
                            $produit['prix'] = $produit['prix'] * $produit['quantite'];
                            $prix_panier += $produit['prix'];
                        ?>

                    <li class="list-group-item" style="border:none; margin-bottom:5px; margin-top:5px">
                        <div class="card" style="border: 1px solid black;border-radius:15px;">
                            <div class=" row no-gutters"
                                style="border: 1px solid black;border-radius:15px; background-color: rgba(230, 230, 230)">
                                <div id="image" class="col-sm-5" style="display:flex">
                                    <img class="card-img" style="object-fit:cover;border-radius:15px"
                                        src=" <?= $produit['image'] ?>">
                                </div>
                                <div class="col-sm-7">
                                    <div class="card-body">
                                        <div id="infos">

                                            <h5 style="float:left" class="card-title">
                                                <u><b><?= $produit['nom'] ?></b></u>
                                            </h5>


                                            <h5 style="float:right" class="card-title"><b><?= $produit['prix'] ?> €</b>
                                            </h5>

                                        </div>
                                        <br>
                                        <hr>

                                        <input class="input_panier" type="number"
                                            placeholder=<?= $produit['quantite'] ?>>
                                        <div class="text-center">
                                            <a href="../traitements/viderpanierarticle.php?id=<?php echo $produit["id"]; ?>"
                                                class="btn collapsible2">Supprimer du panier</a>
                                            <button class="collapsible">Voir le produit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>

                <?php
                        }
                    } else { ?>
                <div class="card-body">
                    Panier Vide
                </div>
                <?php
                    }
            ?>

                <?php
            function viderPanier()
            {
                global $Produit;
                unset($Produit);
            }
            ?>

            </div>
            <div class="card-header text-right"
                style="border-top: 1px solid black; background:rgba(88, 164, 214, 0.568); align-items:center">
                <a href="./accueil.php" class="btn btn-secondary" style="float:left">Retour à la boutique</a>
                <a href="../traitements/viderpanier.php" class="btn btn-secondary" style="float:left">Vider le
                    panier</a>

                <a href="" class="btn btn-secondary">
                    <b><?= $prix_panier ?> €</b>
                </a>
                <a href="#" class="btn btn-success">Valider la commande</a>
            </div>


        </div>
    </div>


    </div>
    </div>
</section>





<?php include("../templates/footer.php"); ?>

</html>