<?php

require_once("../modeles/Produits.php");

// Vérifier les $_POST
if (isset($_POST["categorie"]) && isset($_POST["nom"]) && isset($_POST["prix"]) && isset($_POST["quantite"]) && isset($_POST["commentaire"]) && isset($_POST["image"])) {

	$Produits = new Produits();
	$Produits->ajouter($_POST['categorie'], $_POST['nom'], $_POST['prix'], $_POST['quantite'], $_POST['commentaire'], $_POST['image']);
} else {
	// afficher une erreur
}
