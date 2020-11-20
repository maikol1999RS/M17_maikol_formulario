<?php
  require 'database.php';

  $message = '';

  if(!empty($_POST['email']) && !empty($_POST['password'])){
    $sql = " INSERT INTO users (email, password) VALUES (:email, :password)";
    $var = $conn->prepare($sql);
    $var->bindParam(':email',$_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $var->bindParam(':password',$password);

        if($var->execute()){
          $message = 'Usuario Creado correctamente';
        }else{
          $message = 'Lo sentimos, Ha ocurrido un error creando su cuenta';
        }
  }
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>REGISTRO</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">

  </head>
  <body>

      <?php require 'codigos/header.php' ?>

      <?php if(!empty($message)):?>
          <p> <?= $message ?> </p>
      <?php endif; ?>

      <h1>REGISTRATE</h1>
      <span> O <a href="login.php">ACCEDE</a> </span>
      <form action="registro.php" method="post">
        <input type="text" name="email" placeholder="Escribe tu email">
        <input type="password" name="password" placeholder="Ingresa tu contraseña">
        <input type="password" name="confirm-password" placeholder="Confirma tu contraseña">
        <input type="submit" value="ENVIAR">
      </form>

  </body>
    <footer style="margin-top:325px;">POWERED BY MAIKOL</footer>
</html>
