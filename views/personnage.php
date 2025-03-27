<?php
require_once('C:/MAMP/htdocs/php/partiel_corentin_dubernet/partiel/model/pdo.php');

$personnage_id = $_GET['id'];
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<div class="section">
    <h1><?=$nom?></h1>
    <p><?=$description?></p>
    
    <a href="../index.php" class="btn">Retour</a>
</div>
</body>
</html>
   