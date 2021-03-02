<!DOCTYPE html>
<html style="height: 100%;">
<?php
require_once("../templates/header.php");

if (!isset($_SESSION['id'])) {
	header("location ../traitements/deconnexion.php");
	exit;
}

?>
<div class="container-fluid">
    <div id="principal" class="row">
        <div class="entrees col-md-8 col-xs-12">
            <div class="container">
                <!--from permet d'envoyer sur la page action les donnéees des inputs en methode post-->
                <form action="traitements/ajouter.php" method="POST">

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

                    <p class="ElementCar">Nom :</p> <input type="text" name="nom" /><br>


                    <p class="ElementCar">Prix :</p> <input type="number" name="prix" /><br>

                    <p class="ElementCar">Quantité :</p> <input type="number" name="quantite" /><br>

                    <p class="ElementCar">Boite de vitesse :</p>
                    <select name=boitevit>
                        <option value="Manuelle">Manuelle</option>
                        <option value="Automatique">Automatique</option>
                    </select><br>


                    <p class="ElementCar">Commentaire :</p> <input type="text" name="commentaire" size="100" /><br>

                    <p class="ElementCar">Lien image :</p> <input type="text" name="image" /><br>

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