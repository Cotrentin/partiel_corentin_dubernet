<?php
require_once('C:/MAMP/htdocs/php/partiel_corentin_dubernet/partiel/model/pdo.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head>
 <body>
    <div class="section">
        <h1>TOP manga :</h1>
        <table>
                <?php
                foreach ($dbPDO->query("SELECT titre, année_de_publication FROM manga ORDER BY année_de_publication DESC") as $row) {
                    echo "<tr>
                         <td>{$row['titre']}</td>
                         <td>{$row['année_de_publication']}</td>
                         <td><a href='Views/manga.php?id={$row['id']}'>info</a></td>
                        </tr>";
                }
                ?>
         </table>
         <a href='formulaire/addAuthor.php'>ajouté un auteur.</a>
         <a href='formulaire/addCharacter.php'>ajouté un personnage.</a>
         <a href='formulaire/addManga.php'>ajouté un manga.</a>
    </div>
    </body>