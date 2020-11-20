<?php

  session_start();

  require 'database.php';

  if(isset($_SESSION['user_id'])){
    $consulta = $conn->prepare('SELECT id,email,password FROM users WHERE id=:id');
    $consulta->bindParam('id',$_SESSION['user_id']);
    $consulta->execute();
    $resultado = $consulta->fetch(PDO::FETCH_ASSOC);

    if (count($resultado) > 0) {
      $user = $resultado;
    }

  }


 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> ACTIVITAT - M17 - MAIKOL</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
    <?php require 'codigos/header.php' ?>

    <?php if (!empty($user)): ?>
      <br>Bienvenido. <?= $user['email'] ?>
      <br>Has accedido correctamente.
      <a href="logout.php">SALIR</a>
    <?php else: ?>
      <h1>POR FAVOR, ACCEDE O REGISTRATE</h1>
      <a href="login.php">ACCESO</a>
      <a href="registro.php">REGISTRO</a>
    <?php endif; ?>



  </body>
  <footer>POWERED BY MAIKOL</footer>
</html>
