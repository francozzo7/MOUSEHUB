<?php
include_once "conexao.php";

$mensagem = ""; // Inicializa a mensagem vazia

if (isset($_POST['nome'])) {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $data_nascimento = $_POST['data_nascimento'];
    $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

    // Verifica se o e-mail já está cadastrado
    $verifica_email = "SELECT id FROM usuarios WHERE email = ?";
    $stmt_verifica = $mysqli->prepare($verifica_email);
    $stmt_verifica->bind_param("s", $email);
    $stmt_verifica->execute();
    $stmt_verifica->store_result();

    if ($stmt_verifica->num_rows > 0) {
        $mensagem = "Erro: Este e-mail já está cadastrado.";
        $stmt_verifica->close();
    } else {
        // Usando instrução preparada para evitar injeção de SQL
        $sql = "INSERT INTO usuarios (nome, email, data_nasc, senha) VALUES (?, ?, ?, ?)";

        $stmt = $mysqli->prepare($sql);

        if ($stmt) {
            // Vincula parâmetros da instrução preparada
            $stmt->bind_param("ssss", $nome, $email, $data_nascimento, $senha);

            // Executa a instrução preparada
            if ($stmt->execute()) {
                $mensagem = "Cadastro realizado com sucesso.";
            } else {
                $mensagem = "Erro: " . $stmt->error;
            }

            // Fecha a instrução preparada
            $stmt->close();
        } else {
            $mensagem = "Erro na preparação da declaração: " . $mysqli->error;
        }

        $mysqli->close();
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cadastro.css">
    <title>Cadastro de Usuário</title>
</head>

<body>
    <section class="area-login">
        <div class="login">
            <div>
                <img src="images/CADASTRO.png" alt="Cadastro">
            </div>

            <form action="" method="POST">
                <input type="text" name="nome" placeholder="Nome" autofocus>
                <input type="text" name="email" placeholder="E-mail">
                <input type="date" name="data_nascimento" placeholder="Data de Nascimento">
                <input type="password" name="senha" placeholder="Sua senha">
                <input type="submit" value="Cadastrar">
            </form>
            <p>Já tem uma conta?<a href="index.php">Fazer Login</a></p>

            <!-- Exibindo a mensagem abaixo do formulário -->
            <div class="mensagem"><?php echo $mensagem; ?></div>
        </div>
    </section>
</body>

</html>
