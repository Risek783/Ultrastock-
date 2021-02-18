<?php
session_start();


if(!isset($_SESSION['id'])){
        header("location: ../traitements/deconnexion.php?error=accesinterdit");
        exit;
}
 

require_once('../modeles/Produits.php');
include("../templates/header.php");

$Produit = new Produits;
$liste_produit = $Produit->recupererproduit();

?>

<!DOCTYPE html>
<html>

<body>
        <table class="table">
                <tr>
                        <th class="ElementCar">
                                Catégorie
                        </th>
                        <th class="ElementCar">
                                Nom
                        </th>
                        <th class="ElementCar">
                                Prix
                        </th>
                        <th class="ElementCar">
                                Quantité
                        </th>
                        <th class="ElementCar">
                                Commentaire
                        </th>
                        <th class="ElementCar">
                                Image
                        </th>
                        <th class="ElementCar">
                                Action
                        </th>




                </tr>
        </table>
        <?php foreach ($liste_produit as $row) { ?>
                <table class="table">
                        <tr>
                                <th class="ElementCar">
                                        <?= $row["categorie"] ?>
                                </th>
                                <th class="ElementCar">
                                        <?= $row["nom"] ?>
                                </th>
                                <th class="ElementCar">
                                        <?= $row["prix"] ?>
                                </th>
                                <th class="ElementCar">
                                        <?= $row["quantite"] ?>
                                </th>
                                <th class="ElementCar">
                                        <?= $row["commentaire"] ?>
                                </th>
                                <th class="ElementCar">
                                        <div>
                                                <img style="height:100px;width:150px;object-fit:contain;" src="<?= $row['image'] ?>">
                                        </div>
                                </th>
                                <th class="ElementCar">
                                        <div>
                                                <button type="button" class="btn_table">Modifier</button>
                                                <button type="button" class="btn_table">supprimer</button>
                                        </div>
                                </th>
                        </tr>
                </table>
        <?php
        }
        ?>
</body>
<?php include("../templates/footer.php"); ?>

</html>