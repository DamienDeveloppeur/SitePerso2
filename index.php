<?php

include ("controller/controller.php");

// SI LA SESSION N'EXISTE PAS => ON LA CREE
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
// INSCRIPTION
if (isset($_POST["pseudo"]) && isset($_POST["pass"])
&& isset($_POST["pass1"])&& isset($_POST["email"]) && isset($_POST["groupe"]))
    {
       register($_POST["pseudo"], $_POST["pass"], $_POST["email"], $_POST["groupe"]);  
    }
// CONNEXION
if (isset($_POST["pseudo"]) && isset($_POST["pass"]))
    {
        connexion ($_POST["pseudo"], $_POST["pass"]);
    }

// DONNEES TRANSMISES PAR URL
//~~~~~~~~~~~~~~~~~~~~//
if (isset($_GET["action"]))
{
    // PROFIL / CHANGER AVATAR
    if ($_GET["action"] == "profil")
    {

        showDonneesMembre($_SESSION["pseudo"]);
        changeAvatar ($_SESSION["id"].'.'. $extensionImage, $_SESSION["id"]);
        if (isset($extensionImage))
        {
        changeAvatar ($_SESSION["id"].'.'. $extensionImage, $_SESSION["id"]);
        }
    }   
    // CHAT
    if ($_GET["action"] == 'chat')
    {   
        $reponse = showMessageChat();

    }
    if ($_GET["action"] == 'addMessage')
    {
    if (isset($_POST["message"]) && isset($_SESSION["pseudo"]))
        {
         messageChat($_SESSION["pseudo"], $_POST["message"]);
         $reponse = showMessageChat();

        }  
    }
    if ($_GET["action"] == "livredor")
    {
       $reponse = messageLivredor();
    }
    if ($_GET["action"] == "addlivredor")
    {
        if (isset($_SESSION["pseudo"]) && isset($_POST["messagelivredor"]))
        {
            addMessageLivredor($_SESSION["pseudo"], $_POST["messagelivredor"]);
            $reponse = messageLivredor();
            echo'CA MARCHE';
        }
        
    }
}   
// EXECUTION PAR DEFAUT
 else
     {
    getOnePage ();
     }




   
    

  