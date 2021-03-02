<?php
session_start();
$idproduit = $_GET["id"];
unset($_SESSION["panier"][$idproduit]);
header("location:../pages/panier.php");