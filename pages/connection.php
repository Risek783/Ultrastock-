<!DOCTYPE html>
<html style="height: 100%;">
<?php
require_once('../templates/header.php');

if (isset($_GET['success']) && $_GET['success'] == "inscr") {
	echo "Inscription réussie";
}

if (isset($_GET['success']) && $_GET['success'] == "logout") {
	echo "Déconnexion réussie";
}

if (isset($_GET['success']) && $_GET['success'] == "accesinterdit") {
	echo "Veuillez vous connecter pour accéder à cette page";
}

if (isset($_GET['email'])) {
	$email = $_GET['email'];
} else {
	$email = "";
}


?>

<div class="background">
    <div class="centrer" style="margin-top:25vh">
        <div class="col-sm-5">
            <img class="card-img" style="max-height:150px; object-fit:contain; margin-left:73%; margin-bottom:20px;"
                src="../image/logo2.png">
        </div>
        <h1>Se Connecter</h1>
        <form class="form2" action="../traitements/authentification.php" method="post" autocomplete="off">

            <input type="text" name="email" placeholder="Email" value="<?php echo $email; ?>" required>

            <input type="password" name="password" placeholder="Mot de passe">

            <button style="color:white; background-color:#007bff;border-color: #007bff;" type="submit"
                name="login_user">Se Connecter</button>
        </form>
        <a href="crea_compte.php" class="login">Je suis nouveau, creer un compte</a>
    </div>
</div>

<?php include("../templates/footer.php") ?>

</html>