<!DOCTYPE html>
<html style="height: 100%;">
<?php
session_start();
require_once('../templates/header.php');

?>
<div class="centrer">
    <h1>Création du compte</h1>
    <form class="form2" method="post" action="../traitements/inscription.php" autocomplete="off">

        <input type="text" name="nom" placeholder="Nom" required>

        <input type="text" name="prenom" placeholder="Prenom" required>

        <input type="text" name="email" placeholder="Email" required>

        <input type="password" name="password" placeholder="Mot de passe" required>

        <input type="password" name="cpassword" placeholder="Confirmer Mot de passe" required>

        <button style="color:white; background-color:#007bff;border-color: #007bff;" type="submit" name="formsend"
            id="login-button">Créer</button>
    </form>
    <a href="connection.php" class="login">Retour à l'écran de connexion</a>
</div>

<?php include("../templates/footer.php") ?>

</html>