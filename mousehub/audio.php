<?php

include('protecao.php');

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>MouseHUB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="produtos.css">
</head>
<body>
    
    <div class="background">

        <header>

            <nav>

                <li>
                    <a href="home.php">Início</a>
                </li>

                <li>
                    <a href="comunidade.php">Comunidade</a>
                </li>

                <li>
                    <a href="mouses.php">Mouses</a>
                </li>

                <li>
                    <a href="teclados.php">Teclados</a>
                </li>

                <li>
                    <a href="mousepads.php">Mousepads</a>
                </li>

                <li>
                    <a href="audio.php">Áudio</a>
                </li>

                <li>
                    <a href="cadastro_produto.php">Cadastrar Produtos</a>
                </li>

                <li> 
                    <a href="logout.php">Sair</a>
                </li>

            </nav>
            <style>
  .container {
    display: grid;
    place-items: center;
  }
</style>
</header>

<p>
        <div class="container">
            <div class="div-centralizada">
                <h1>Bem-vindo à nossa loja!</h1>

                <div class="container text-center">
                    <div class="row">
                        <?php
                        include('conexao.php');

                        $sql_code = "SELECT * FROM audio";
                        $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);

                        if ($sql_query->num_rows >= 1) {
                            while ($produto = $sql_query->fetch_assoc()) {
                        ?>
                                <div class="col-4">
                                    <a href="produto_audio.php?id=<?= $produto['id'] ?>">
                                        <img src="<?= $produto['imagem'] ?>" width="70%" alt="<?= $produto['nome'] ?>">
                                        <div class="nome">
                                        <h2><?= $produto['nome'] ?></h2>
                                    </div>
                                    <div class="preco">
                                        <p>Preço: <?= $produto['preco'] ?></p>
                                    </div>
                                    </a>
                                </div>
                        <?php
                            }
                        } else {
                            echo "Nenhum produto encontrado.";
                        }
                        ?>
                    </div>
                </div>


                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>