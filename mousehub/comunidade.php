<?php
// Conectar ao banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mousehub";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erro na conexão com o banco de dados: " . $conn->connect_error);
}

// Processar o formulário de comentário
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_usuario = $_POST["id_usuario"]; // Este valor deve ser obtido de alguma forma (login, sessão, etc.)
    $comentario = $_POST["comentario"];

    // Inserir o comentário no banco de dados
    $sql = "INSERT INTO comentarios (id_usuario, comentario) VALUES ('$id_usuario', '$comentario')";

    if ($conn->query($sql) === TRUE) {
        // Comentário adicionado com sucesso
    } else {
        echo "Erro ao adicionar o comentário: " . $conn->error;
    }

    // Redirecionar de volta para a página da comunidade
    header("Location: comunidade.php");
    exit();
}

// Recuperar os comentários do banco de dados
$sql_select = "SELECT * FROM comentarios ORDER BY data_comentario DESC";
$result = $conn->query($sql_select);
$comentarios = [];

if ($result) {
    while ($row = $result->fetch_assoc()) {
        $comentarios[] = $row['comentario'];
    }

    // Fechar o resultado da consulta
    $result->close();
} else {
    echo "Erro na consulta SQL: " . $conn->error;
}

// Fechar a conexão com o banco de dados
$conn->close();
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="comunidade.css">
    <title>MouseHUB</title>
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

    </header>
</div>

<main class="main">
    <!-- Formulário de postagem -->
    <div class="newPost">

        <div class="infoUser">
            <div class="imgUser">
            </div>
            <strong>Vinícius Francozzo</strong>
        </div>

        <form action="processa_comentario.php" method="post" class="formPost" id="formPost">
            <input type="hidden" name="id_usuario" value="1"> <!-- Substitua pelo valor real do id_usuario -->
            <textarea name="comentario" placeholder="Fala aí, entusiasta!" id="textarea"></textarea>
            <div class="iconsAndButton">
                <button type="submit" id="botao" class="btnSubmitForm">Publicar</button>
            </div>
        </form>

    </div>

    <!-- Exibir Comentários -->
    <ul class="posts" id="posts">
        <?php
        foreach ($comentarios as $comentario) {
            echo "<li>{$comentario}</li>";
        }
        ?>
    </ul>
</main>
</body>

</html>
