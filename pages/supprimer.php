<!DOCTYPE html>
<html style="height: 100%;">
<?php
require_once("connect_bd.php");


$req = "DELETE FROM produits WHERE id=" . $_POST['id'];
$resultat = $bdd->query($req);
$resultat = $resultat->fetchAll();

header('location: stock.php');

?>

</html>