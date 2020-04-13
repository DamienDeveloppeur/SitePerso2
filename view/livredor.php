<?php
if(!isset($_SESSION)){
    session_start();
}
?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./public/CSS/include.css">
    <link rel="stylesheet" media="screen and (max-width: 1350px)" href="../public/CSS/stylesonepage.css" />
    <link rel="stylesheet" media="screen and (max-width: 600px)"  href="../public/CSS/stylesonepage.css" />
    <meta charset="utf-8" />
    <title> Livre d'or</title>
</head>
<body>
<div id="livredor">
        <?php
    require "C:/wamp64/www/sitePersoMVCobjet/include/header1C.php";
    ?>
        <h1> Livre d'or </h1>
        <p> Vous êtes : <br>
        un collégue de formation ? <br>
        Un ancien de nouas ? <br>
        Un ancien maitre de stage ? <br>
        Un formateur ?<br> 
        

<form method="POST" action="http://localhost/sitePersoMVCobjet/index.php?action=addlivredor">

<label> Votre message : </label>
<input name="messagelivredor" type="text"/>
<input type="submit" value="Valider"/>
</form>
<?php
var_dump($_SESSION["pseudo"]);
var_dump($_POST["messagelivredor"]);
while ($donnees = $reponse ->fetch())
{
    ?>
    <div id="contentLivredor">
        <?php
echo'<h1>' .   $donnees["pseudo"] .":" . "<br>".'</h1>';
echo'<h2>' . $donnees["post"] . "<br>~~~~~~~~~~~~~" . '</h2>';
?>
</div>
<?php
}



    require "./include/footer.php";
?>

</body>
</html>