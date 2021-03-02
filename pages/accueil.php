<!DOCTYPE html>
<html style="height: 100%;">

<?php
require_once('../modeles/Produits.php');
require_once('../modeles/Categorie.php');
require_once('../modeles/Type.php');
include("../templates/header_home.php");

$Produit = new Produits;
$Categorie = new Categorie;

$Type = new Type;
$Liste_type = $Type->getType();
?>



<section class="background">

    <div id="goToPanier" hidden>

    </div>

    <div id="CarouselCatControls" class="carousel slide" data-interval="false">
        <ol class="carousel-indicators">
            <?php
      $j = 0;
      foreach ($Liste_type as $type) {
      ?>
            <li data-target="#CarouselCatControls" data-slide-to="<?= $j; ?>" class="<?= ($j == 0 ? "active" : ""); ?>">
            </li>
            <?php $j++;
      } ?>
        </ol>

        <div class="carousel-inner">

            <?php $i = 0;
      foreach ($Liste_type as $type) {
        $liste_produit_type = $Produit->recupererProduitParType($type['id']);
      ?>

            <div class="carousel-item <?= ($i == 0 ? "active" : ""); ?>">
                <div class="carousel_article">
                    <div id=" <?= $type['id'] ?>" class="carousel_header" data-categorie="<?= $type['id'] ?>">
                        <h2><?= $type['nom']; ?></h2>
                    </div>
                    <div id="article_produit" class="article_produit">

                        <?php foreach ($liste_produit_type as $produit) {
                $categorie_list = $Categorie->recupererCategorie($produit['id'])
              ?>
                        <article id="<?= $produit['id'] ?>" class="card"
                            style="margin-bottom: 10px;border-radius:15px; border: 1px solid black;background-color: rgba(250, 250, 250, 0.6); box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);">
                            <div class=" row no-gutters" style="border: 1px solid black;border-radius:15px">
                                <div id="image" class="col-sm-5" hidden>
                                    <img class="card-img" style="max-height: 270px; object-fit:cover;border-radius:15px"
                                        src=" <?= $produit['image'] ?>">
                                </div>
                                <div id="image" class="col-sm-5">
                                    <img class="card-img" style="max-height: 270px; object-fit:cover;border-radius:15px"
                                        src=" <?= $produit['image'] ?>">
                                </div>
                                <div class="col-sm-7">
                                    <div class="card-body">
                                        <div id="infos" hidden>

                                            <h5 style="float:left" class="card-title">
                                                <u><b><?= $produit['nom'] ?></b></u>
                                            </h5>

                                            <b>
                                                <h5 style="float:right" class="card-title"><?= $produit['prix'] ?> €
                                                </h5>
                                            </b>
                                        </div>
                                        <div id="infos">

                                            <h5 style="float:left" class="card-title">
                                                <u><b><?= $produit['nom'] ?></b></u>
                                            </h5>

                                            <b>
                                                <h5 style="float:right" class="card-title"><?= $produit['prix'] ?> €
                                                </h5>
                                            </b>
                                        </div>
                                        <br>
                                        <hr>
                                        <br>
                                        <div style="text-align: center">
                                            <?php foreach ($categorie_list as $cat) { ?>
                                            <button type=button class="pti_collapsible">
                                                <span style="text-align: center;"><?= $cat['nom'] ?> </span>
                                            </button>
                                            <?php
                          }
                          ?>
                                        </div>
                                        <br>
                                        <a href=" description_jeu.php?jeu=<?= $produit['id'] ?>">
                                            <button type="button" class="collapsible">
                                                <span style="text-align: center;">Voir le produit <i
                                                        class="fas fa-info-circle"></i> </span>
                                            </button>
                                        </a>
                                        <form method="post" action="../traitements/insererDansPanier.php">
                                            <button id="btn_panier" name="produit" value="<?= $produit['id'] ?>"
                                                type="submit" class="bouton-panier">
                                                <span style="text-align: center;">Mettre dans le panier <i
                                                        class="fas fa-cart-arrow-down"></i> </span>
                                            </button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </article>
                        <?php }  ?>
                    </div>
                </div>
            </div>
            <?php
        $i++;
      }
      ?>
        </div>
        <a class="carousel-control-prev" href="#CarouselCatControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#CarouselCatControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
</section>



<script>
// function goIntopanier(myBtn) {
//   openNavPanier();
//   article = document.getElementById("article_produit").children[parseInt(myBtn.getAttribute("name")) - 1];
//   article_image = article.children[0].children[0];
//   article_infos = article.children[0].children[2].children[0].children[0];
//   div_panier = document.createElement("div");
//   div_panier.appendChild(article_image);
//   div_panier.appendChild(article_infos);

//   hr = document.createElement("hr");
//   hr.style.marginBottom = "20px";
//   hr.style.marginTop = "70px";

//   (document.getElementById("goToPanier")).appendChild(div_panier);
//   (document.getElementById("goToPanier")).appendChild(hr);
//   (document.getElementById("sideNavigation3")).appendChild(goToPanier);
//   (document.getElementById("sideNavigation3")).children[4].removeAttribute('hidden');

//   for (var i = 0; i < div_panier.children.length; i++) {
//     div_panier.children[i].removeAttribute('hidden');

//   }
// }

// function cleanPanier() {
//   openNavPanier();
//   for (var i = 0; i < goToPanier.children.length; i++) {
//     elem = goToPanier.children[i];
//     image = document.getElementById("image");
//     goToPanier.children[i].setAttribute("hidden", true);
//     (article.children[0]).InsertBefore(goToPanier.children[i], image)

//   }
// }
</script>



<?php include("../templates/footer.php"); ?>

</html>