<?php
    $mensagem = ""; // Inicializa a mensagem como vazia
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Conectar ao banco de dados
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "mousehub";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Verificar a conexão
        if ($conn->connect_error) {
            die("Erro na conexão com o banco de dados: " . $conn->connect_error);
        }

        // Obter os dados do formulário
        $categoria = $_POST["categoria"];
        $imagem = $_POST["imagem"];
        $nome = $_POST["nome"];
        $preco = $_POST["preco"];
        $descricao = $_POST["descricao"];

        // Determinar a tabela com base na categoria selecionada
        $tabela = "";
        switch ($categoria) {
            case "mouses":
                $tabela = "mouses";
                break;
            case "teclados":
                $tabela = "teclados";
                break;
            case "mousepads":
                $tabela = "mousepads";
                break;
            case "audio":
                $tabela = "audio";
                break;
            default:
                echo "Categoria inválida.";
                exit;
        }

        // Inserir dados no banco de dados
        $sql = "INSERT INTO $tabela (imagem, nome, preco, descricao) VALUES ('$imagem', '$nome', '$preco', '$descricao')";

        if ($conn->query($sql) === TRUE) {
            echo "Produto cadastrado com sucesso!";
        } else {
            echo "Erro ao cadastrar o produto: " . $conn->error;
        }

        if ($conn->query($sql) === TRUE) {
            $mensagem = "Produto cadastrado com sucesso!";
        } else {
            $mensagem = "Erro ao cadastrar o produto: " . $conn->error;
        }

        // Fechar a conexão com o banco de dados
        $conn->close();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cad_prod.css">
    <title>Cadastro de Produtos</title>
</head>
<body>

    <div class="background">

        <header class="header">
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

        <section class="area-login">
            <div class="login">
                <div>
                    <img src="images/CADASTRO.png" alt="Cadastro">
                </div>
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        Categoria:
        <select name="categoria" required>
            <option value="mouses">Mouses</option>
            <option value="teclados">Teclados</option>
            <option value="mousepads">Mousepads</option>
            <option value="audio">Áudio</option>
        </select><br>
        <input type="text" name="imagem" placeholder="URL da Imagem" required><br>
        <input type="text" name="nome" placeholder="Nome" required><br>
        <input type="text" name="preco" placeholder="Preço" required><br>
        <input name="descricao" placeholder="Descrição ; para separar tópicos" required></textarea><br>
        <input type="submit" value="Cadastrar Produto">
        </form>
                           <!-- Mensagem de sucesso ou erro -->
                           <?php if (!empty($mensagem)): ?>
                    <p><?php echo $mensagem; ?></p>
                <?php endif; ?>
            </div>
        </section>

    </div>

</body>
</html>
