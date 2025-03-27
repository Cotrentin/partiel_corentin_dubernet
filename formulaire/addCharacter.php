<?php
 require_once('C:/MAMP/htdocs/php/partiel_corentin_dubernet/partiel/model/pdo.php');
 
 $nom = $_POST['nom'];
  $manga = $_POST['manga'];
  
  if (isset($nom) && isset($manga)) {
         $sql = "INSERT INTO personnage (nom, manga) VALUES (:nom, :manga, 1)";
         $requete = $dbPDO->prepare($sql);
         $requete->bindParam(':nom', $nom);
         $requete->bindParam(':manga', $manga);
 
         if ($requete->execute()) {
             echo "</br>Le personnage a été ajouté avec succès.";
         }
     }
  else {
     echo "Tous les champs doivent être remplis.";
 }
  
  ?>
  <br>
  <a href="../index.php">Retour à l'accueil</a>