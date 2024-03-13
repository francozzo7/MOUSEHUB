<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="pagina_prod.css">
    <title>Áudio</title>
</head>
<body>
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
    </header>
    
    <?php 
    if(isset($_GET['id'])){
        include('conexao.php');

        $sql_code = "SELECT * FROM audio WHERE id = {$_GET['id']}";
        $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);
        $produto = $sql_query->fetch_assoc();
        
        if ($produto) {  // Verifica se a consulta retornou algum resultado
    ?>
        <div class="col-4">
            <div class="imagem">
                <img src="<?= $produto['imagem'] ?>" width="70%" alt="<?= $produto['nome'] ?>">
            </div>
            <div class="detalhes">
                <div class="nome">
                    <h2><?= $produto['nome'] ?></h2>
                </div>
                <div class="preco">
                    <p>Preço: <?= $produto['preco'] ?></p>
                </div>
                <div class="descricao">
                    <!-- Transforma a string em um array usando ponto e vírgula como delimitador -->
                    <?php
                    $itensDescricao = explode(';', $produto['descricao']);
                    ?>
                    <ul>
                        <?php
                        // Exibe os itens em uma lista HTML
                        foreach ($itensDescricao as $item) {
                            echo '<li>' . trim($item) . '</li>'; // trim remove espaços em branco extras
                        }
                        ?>
                    </ul>
                </div>
                <div class="botao-loja">
                    <a href="http://doctormouse.com.br">
                        <button>Ir para a loja</button>
                    </a>
                </div>
            </div>
        </div>
    <?php
        }
    }
    ?> 
</body>
</html>
