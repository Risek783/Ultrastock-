<?php
session_start();
require_once('../modeles/Type.php');
$Type = new Type;
$Liste_type = $Type->getType();
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <Title>TopAuto</Title>
    <link rel="icon" href="../images/logo.jpg" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <style type="text/css">
    .auto-style1 {
        width: 178px;
    }

    .auto-style2 {
        width: 168px;
    }
    </style>
</head>

<body>
    <div id="sideNavigation" class="sidenav2">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNavProfil()">&times;</a>
        <a href="../traitements/deconnexion.php" />Se déconnecter</a>

    </div>

    <div id="sideNavigation2" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNavMenu()">&times;</a>
        <div style="width:100%">

            <?php foreach ($Liste_type as $type) { ?>

            <a class="btn-2" style="text-align:center" data-slide-to="<?= $type['id'] - 1; ?>"
                data-target="#CarouselCatControls" href="accueil.php?=<?= $type['id'] ?>"> <?= $type['nom']; ?> </a>
            <hr>
            <?php } ?>
        </div>

    </div>

    <div class="topnav">
        <nav>
            <b>


                <div style="float:right">
                    <?php
                    if (isset($_SESSION["id"])) {
                    ?>

                    <a onclick="openNavProfil()">
                        <i class="fas fa-user-circle"></i> Profil
                    </a>



                    <?php
                    } else {
                    ?>
                    <a href="./connection.php">
                        <i class="fas fa-user-circle"></i> Connexion
                    </a>

                    <?php
                    }
                    ?>
                </div>

            </b>
        </nav>
    </div>

</body>

<script>
function openNavProfil() {
    document.getElementById("sideNavigation").style.width = "280px";
}

function closeNavProfil() {
    document.getElementById("sideNavigation").style.width = "0";
}
</script>