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
        <ul>
             <?php
             foreach ($dbPDO->query("SELECT titre, année_de_publication FROM manga ORDER BY année_de_publication DESC") as $row) {
                 echo "<li>{$row['titre']}</li>";
                 echo "<li>{$row['année_de_publication']}</li>";
             }
             ?>
         </ul>
    </div>
    </body>