<?php
include("../templates/header_panier.php");
require_once("../modeles/Commande.php");
?>

<section class="background">
    <div class="container panier_case">
        <div class="card mt-4 shadow">
            <div class="card-header" style="border-bottom: 1px solid black; background:rgba(88, 164, 214, 0.568)">
                <h4>Liste des commandes</h4>
            </div>
            
              <div class="card-body">
                
                  <ul class="list-group">
                    <?php if (!empty($_SESSION["panier"])) {
                      $Commande = new Commande;
                    $user_id = $_SESSION['id'];
                    $liste_commande = $Commande->getCommande($user_id);?>
                      <?php foreach ($liste_commande as $commande) {
                        $date = strtotime($commande['date']);?>

                        <li class="list-group-item" style="border:none; margin-bottom:2px; margin-top:2px">
                            <div class="card" style="border: 1px solid black;border-radius:15px;">
                                <h6> <?= $commande['num_commande'] ?> </h6>
                                <h6 ><?= date('d/m/Y', $date)?></h6>
                            </div>
                        </li>
                        <?php }
                    } else { ?>
                      <div class="card-body" style="text-align:center;">
                          Aucune Commande
                      </div>
                    <?php } ?>
                  </ul>                
              </div>
            <div class="card-header text-right"
                style="border-top: 1px solid black; background:rgba(88, 164, 214, 0.568); align-items:center">
                <a href="./accueil.php" class="btn btn-primary" style="float:right; margin-right:5px;">
                    Retour à la boutique
                </a>
            </div>
        </div>
    </div>
</section>


<?php
include("../templates/footer.php");
?>