<?php
require_once('C:/MAMP/htdocs/php/partiel_corentin_dubernet/partiel/model/pdo.php');

$manga_id = $_GET['id'];
$titre = $_GET['titre'];
$année_de_publication = $_GET['année_de_publication'];
$description = $_GET['description'];
$auteur = $_GET['auteur'];
$personnage_principal = $_GET['personnage_principal'];
$dbPDO->exec("SELECT FROM manga WHERE id = $manga_id");
?>

<!DOCTYPE html>
 <html>
 <head>
     <meta charset="UTF-8">
 </head>
 <body>
        <div class="section">
            <h1><?=$titre?></h1>
            <p><?=$auteur?></p>
            <p><?=$année_de_publication?></p>
            
            <p><?=$description?></p>

            <h2> Personnages principaux :</h2>
            <ul>
                <?php
                foreach ($dbPDO->query("SELECT nom FROM personnage WHERE manga_id = $manga_id") as $row) {
                    echo "<li>{$row['nom']}</li>";
                }
                ?>
     <a href="../index.php" class="btn">Retour</a>
 </body>
 </html>