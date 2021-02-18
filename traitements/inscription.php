<?php
require_once("../modeles/Utilisateurs.php");
// Vérifier tous les posts
if (
    isset($_POST['email']) && !empty($_POST['email']) &&
    isset($_POST['password']) && !empty($_POST['password']) &&
    isset($_POST['cpassword']) && !empty($_POST['cpassword']) &&
    isset($_POST['nom']) && !empty($_POST['nom']) &&
    isset($_POST['prenom']) && !empty($_POST['prenom'])
) {
    
    $Utilisateurs = new Utilisateurs();

    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['cpassword'];

    if ($Utilisateurs->checkEmail($_POST['email'])) {
        // Si Oui : Gérer erreur email déjà attribué
        
            echo "L'email existe déjà";
 
    } else {
        
        // Si Non :



        // Vérifier si les passwords correspondent
        if($password == $cpassword){

            // Si Oui : $Utilisateurs->inscription($_POST['email], ...);
            $Utilisateurs->Creer($email, $password, $nom, $prenom);
            echo "Le compte a été créé";
        }
                // Si Non : Gérer erreur password différents
        else {
            echo "Les deux mots de passe ne correspondent pas";
        }

    }
} else {
    // Gérer erreur un champ manquant
        echo "Veuillez remplir les champs vides";
}
