<!DOCTYPE html>
<html style="height: 100%;">
<?php
require_once("../templates/header.php");

// A déplacer
$req = "SELECT * FROM produits WHERE id=" . $_POST['id'];
$resultat = $bdd->query($req);
$resultat = $resultat->fetch();

?>

<div class="container-fluid">
    <div id="principal" class="row">
        <div class="entrees col-md-8 col-xs-12">
            <div class="container">
                <form action="enregistre_modif.php" method="POST">

                    <?php echo '<input type="text" name="id" value="' . $resultat['id'] . '" hidden />'; ?>
                    <p class="ElementCar">categorie :</p>
                    <select name=categorie>
                        <option value="citadine">Citadine</option>
                        <option value="suv">SUV</option>
                        <option value="berline">Berline</option>
                        <option value="mucle_car">Muscle Car</option>
                        <option value="supercar">Supercar</option>
                        <option value="hypercar">Hypercar</option>
                        <option value="special">Special</option>
                    </select><br>
                    <p class="ElementCar">Nom :</p> <input type="varchar" name="nom"
                        value=<?php echo '"' . $resultat['nom'] . '"'; ?> /><br>

                    <p class="ElementCar">Boite de vitesse :</p>
                    <select name=boitevit value=<?php echo '"' . $resultat['boitevit'] . '"'; ?>>
                        <option value="Manuelle">Manuelle</option>
                        <option value="Automatique">Automatique</option>
                    </select><br>

                    <p class="ElementCar">Prix :</p> <input type="int" name="prix"
                        value=<?php echo '"' . $resultat['prix'] . '"'; ?> /><br>

                    <p class="ElementCar">Quantité :</p> <input type="int" name="quantite"
                        value=<?php echo '"' . $resultat['quantite'] . '"'; ?> /><br>




                    <p class="ElementCar">Commentaire :</p> <input type="text" name="commentaire" size="100"
                        value=<?php echo '"' . $resultat['commentaire'] . '"'; ?> /><br>

                    <p class="ElementCar">Lien image :</p> <input type="text" name="image" size="100"
                        value=<?php echo '"' . $resultat['image'] . '"'; ?> /><br>

                    <input type="submit" value="Valider" />

                </form>
            </div>
        </div>
        <div class="col-md-4 d-sm-none d-none d-md-block">
            <img src="image/fond_ajouter.jpg" alt="image indisponible" />
        </div>
    </div>
</div>

</html>