<?php
require_once("../modeles/Utilisateurs.php");
// Vérifier tous les posts
if (
    isset($_POST['email']) && !empty($_POST['email']) &&
    isset($_POST['password']) && !empty($_POST['password'])
) {
    
    $Utilisateurs = new Utilisateurs();

    $email = $_POST['email'];
    $password = $_POST['password'];

    $Utilisateurs->Log($email, $password);

    

    
} else {
    // Gérer erreur un champ manquant
        echo "Veuillez remplir les champs vides";
}
