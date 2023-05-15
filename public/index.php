<?php
  // Initialiser la session
  session_start();
  // Vérifiez si l'utilisateur est connecté, sinon redirigez-le vers la page de connexion
  if(!isset($_SESSION["username"])){
    header("Location: login.php");
    exit(); 
  }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Gestion - Centre Fronton</title>
        <link rel="stylesheet" href="css/style.css">
        <script src="script/defilement.js"></script>
        <link rel="icon" type="image/x-icon" href="/img/ico_fronton-192px.ico">
      </head>

      <body>
        <div class="img-suite">
          <img class="img-haut" src="img/fronton1.jpg">
          <img class="img-haut" src="img/fronton2.jpg">
          <img class="img-haut" src="img/fronton3.jpg">
        </div>
        <div class="ruban-fronton">
          <h2 class="commune">Commune de FRONTON - 31620, Haute-Garonne</h2>
        </div>

        <div class="presentation-page">
          <p class="pres-txt">Pour accéder à l'interface de sécurité, vous devez être un utilisateur autorisée et vous connecter</p>
        </div>

        <div class="centrer">  
          <div class="div-form-login">
            <form class="login-form" method="">
              <div class="form-title">
                <h2 class="titre2">CONNEXION</h2>
              </div>
              
              <div class="container-id">
                <!--<label for="login-id">Identifiants</label>-->
                <input type="text" placeholder="Ton identifiant" name="id-u" required>
              </div>
              <div class="container-mdp">
                <!--<label for="login-password">Mot de passe</label>-->
                <input type="password" placeholder="Ton mot de passe" name="mdp-u" required>
              </div>
              <div class="container-submit-btn">
                <input type="submit">
              </div>
            </form>
            <p class="little"><b>Mot de passe oublié ou compte inexistant ? Veuillez contacter l'administrateur</b></p>
            <a href="accueil.html">Cliqueddddddddd ici</a>
          </div>
        </div>
        <div class="sucess">
    <h1>Bienvenue <?php echo $_SESSION['username']; ?> et <?php echo $_SESSION['firstname']; ?> !</h1>
    <p>C'est votre tableau de bord.</p>
    <a href="logout.php">Déconnexion</a>
      </body>
</html>