< <?php
	require_once("../templates/header.php");
	require_once("connect_bd.php");

	$req = "UPDATE produits SET nom = '" . htmlspecialchars($_POST['nom']) . "',
		categorie = '" . $_POST['categorie'] . "',
	 	prix = '" . $_POST['prix'] . "',
	 	boitevit ='" . $_POST['boitevit'] . "',
	 	quantite = '" . $_POST['quantite'] . "',
	 	commentaire = '" . htmlspecialchars($_POST['commentaire']) . "',
	 	image = '" . htmlspecialchars($_POST['image']) . "'
	WHERE id=" . $_POST['id'] . ";";

	$resultat = $bdd->query($req);
	$resultat = $resultat->fetch();


	header('location: stock.php');

	?>