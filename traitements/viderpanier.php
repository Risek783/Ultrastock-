<?php
session_start();
unset($_SESSION["panier"]);
header("location:../pages/panier.php");