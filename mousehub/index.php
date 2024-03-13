<?php
include('conexao.php');

$mensagem = ""; // Inicializa a mensagem vazia

if (isset($_POST['email']) && isset($_POST['senha'])) {

    $email = $mysqli->real_escape_string($_POST['email']);
    $senha = $_POST['senha']; // A senha aqui não deve ser escapada, pois já está criptografada no banco de dados

    if (empty($email)) {
        $mensagem = "E-Mail é obrigatório";
    } elseif (empty($senha)) {
        $mensagem = "Senha é obrigatória";
    } else {
        $sql_code = "SELECT * FROM usuarios WHERE email = '$email'";
        $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);

        $quantidade = $sql_query->num_rows;

        if ($quantidade == 1) {
            $usuario = $sql_query->fetch_assoc();

            // Verifica a senha usando password_verify
            if (password_verify($senha, $usuario['senha'])) {
                if (!isset($_SESSION)) {
                    session_start();
                }

                $_SESSION['id'] = $usuario['id'];
                $_SESSION['nome'] = $usuario['nome'];

                header("Location: home.php");
            } else {
                $mensagem = "Falha ao fazer login. E-mail ou senha incorretos";
            }
        } else {
            $mensagem = "Falha ao fazer login. E-mail ou senha incorretos";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Login</title>
</head>
<body>
    <section class="area-login">
        <div class="login">
            <div>
                <img src="images/LOGO.png" alt="Logo">
            </div>

            <form action="" method="POST">
                <input type="text" name="email" placeholder="E-mail" autofocus>
                <input type="password" name="senha" placeholder="Sua senha">
                <input type="submit" value="Entrar">
            </form>

            <!-- Exibindo a mensagem abaixo do formulário -->
            <div class="mensagem"><?php echo $mensagem; ?></div>

            <p>Ainda não tem uma conta?<a href="cadastro.php">Criar conta</a></p>
        </div>
    </section>
</body>
</html>
