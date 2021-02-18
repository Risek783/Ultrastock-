<?php
session_start();
session_destroy();

if(isset($_GET['error'])){
    $erreur = $_GET['error'];
}else{
    $erreur = "logout";
}

header("location: ../pages/connection.php?success=".$erreur);