<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Gestion - Centre Fronton</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="script/defilement.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" type="image/x-icon" href="/img/ico_fronton-192px.ico">
  </head>
<body>
<?php
require('database.php');
session_start();
if (isset($_POST['username'])){
  $username = stripslashes($_REQUEST['username']);
  $username = mysqli_real_escape_string($connect, $username);

  $password = stripslashes($_REQUEST['password']);
  $password = mysqli_real_escape_string($connect, $password);


  

    $query = "SELECT * FROM users WHERE username = '".$username."' and password = '".$password."' ";
    //$requete = "SELECT count(*) FROM users WHERE user_name = '".$username."' and pass_word = '".$password."' ";
  $result = mysqli_query($connect,$query) or die(mysql_error());
  $rows = mysqli_num_rows($result);
  if($rows==1){
      $_SESSION['username'] = $username;
      
      header("Location: index.php");
  }else{
    $message = "Le nom d'utilisateur ou le mot de passe est incorrect.";
  }
}
?>
  <body>
    <div class="region-lg">
      <div class="item-reg-lg">
        <img class="min-log-fronton" src="img/logo-fronton.png">
        <h3>FRONTON - 31620, Haute-Garonne</h3>
      </div>
    </div>
    <!--<div class="img-suite">
      <img class="img-haut" src="img/fronton1.jpg">
      <img class="img-haut" src="img/fronton2.jpg">
      <img class="img-haut" src="img/fronton3.jpg">
      </div>-->
      <!--<div class="ruban-fronton">
        <h2 class="commune">Commune de FRONTON - 31620, Haute-Garonne</h2>
      </div>-->

      <!--<div class="presentation-page">
        <p class="pres-txt">Pour accéder à l'interface de sécurité, vous devez être un utilisateur autorisée et vous connecter</p>
      </div>-->

      <!--<div class="centrer">  
        <div class="div-form-login">-->
            
          <form class="login-form" action="" method="POST" name="login">
            <div class="form-title">
              <h2 class="titre2">CONNEXION</h2>
            </div>
            <div class="container-form">
              <!--<label for="login-id">Identifiants</label>-->
              <i class="fa-solid fa-user-large"></i>
              <input type="text" name="username" placeholder="Identifiants" required>
            </div>
            <div class="container-form">
              <!--<label for="login-password">Mot de passe</label>-->
              <i class="fa-solid fa-lock"></i>
              <input type="password"  name="password" placeholder="Mot de passe" required>
            </div>
            <div class="container-submit-btn">
              <input class="submitbtn slide-hover-left-1" type="submit" value="Se connecter" class="pulse">
            </div>
            <p class="little"><b>Mot de passe oublié ou compte inexistant ? Veuillez contacter l'administrateur</b></p>
          </form>
          
        <!--  <a href="accueil.html">Cliqueddddddddd ici</a>
        </div>
      </div>-->
      
      </body>

<!--<form class="box" action="" method="post" name="login">
    <h1 class="box-title">Connexion</h1>
    <input type="text" class="box-input" name="username" placeholder="Nom d'utilisateur" required>
    <input type="password" class="box-input" name="password" placeholder="Mot de passe" required>
    <input type="submit" value="Connexion " name="submit" class="box-button">
    <p class="box-register">Vous êtes nouveau ici? <a href="register.php">S'inscrire</a></p>-->

    
<!--</form>-->
</body>