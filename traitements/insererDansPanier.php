<?php
session_start();

function quantite()
{
    if(isset($_POST["produit"])){

        if(!isset($_SESSION["panier"]) || !is_array($_SESSION["panier"])){
            $_SESSION["panier"] = [];
        }
    
        // PARCOURIR LE PANIER POUR VERIFIER SI LE PRODUIT EST DEJA DEDANS
        $found = false;
        foreach($_SESSION["panier"] as $idproduit => $detailproduit){
            if($idproduit == $_POST["produit"]){
                $found = true;
                $_SESSION["panier"][$idproduit]["quantite"]++;
            }
        }
    
        if($found == false){
            $_SESSION["panier"][$_POST['produit']] = ["quantite" => 1];
        }
        // SI UTILISATEUR CONNECTE SAUVEGARDER PANIER EN BDD

    header("location:../pages/panier.php");

}else{
	echo "Vous n'avez pas sélectionné de produit";
}

}

// Vérifier les $_POST
if(isset($_POST["produit"])){

    if(!isset($_SESSION["panier"]) || !is_array($_SESSION["panier"])){
        $_SESSION["panier"] = [];
    }

    // PARCOURIR LE PANIER POUR VERIFIER SI LE PRODUIT EST DEJA DEDANS
    $found = false;
    foreach($_SESSION["panier"] as $idproduit => $detailproduit){
        if($idproduit == $_POST["produit"]){
            $found = true;
            $_SESSION["panier"][$idproduit]["quantite"]++;
        }
    }

    if($found == false){
        $_SESSION["panier"][$_POST['produit']] = ["quantite" => 1];
    }

    // SI UTILISATEUR CONNECTE SAUVEGARDER PANIER EN BDD

    header("location:../pages/panier.php");

}else{
	echo "Vous n'avez pas sélectionné de produit";
}