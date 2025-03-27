<?php
 require_once('C:/MAMP/htdocs/php/partiel_corentin_dubernet/partiel/model/pdo.php');
 
 $nom = $_POST['nom'];
  $date = $_POST['année_de_naissance'];
  
  if (isset($nom) && isset($date)) {
         $sql = "INSERT INTO auteur (nom, année_de_naissance) VALUES (:nom, :année_de_naissance, 1)";
         $requete = $dbPDO->prepare($sql);
         $requete->bindParam(':nom', $nom);
         $requete->bindParam(':année_de_naissance', $date);
 
         if ($requete->execute()) {
             echo "</br>L'auteur a été ajouté avec succès.";
         }
     }
  else {
     echo "Tous les champs doivent être remplis.";
 }
  
  ?>
  <br>
  <a href="../index.php">Retour à l'accueil</a>