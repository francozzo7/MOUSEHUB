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

        <div class="carousel-container">
    <div class="carousel" id="image-carousel">
        <!-- Imagens do carrossel -->
        <div class="carousel-item">
            <img src="images/BEMVINDO.png" alt="Imagem 1">
        </div>
        <div class="carousel-item">
            <img src="images/COMUNIDADE.png" alt="Imagem 2">
        </div>
        <div class="carousel-item">
            <img src="images/LOJAS.png" alt="Imagem 3">
        </div>
    </div>
</div>



<p>
<div class="container">
    <div class="div-centralizada">
        <div class="resumo">
            <h1>MouseHUB</h1>
            <h2><span>Bem-vindo ao MouseHUB, a comunidade nacional de entusiastas mais engajada da internet.</span></h2>
            <h2>Esse é um projeto dedicado aos entusiastas de periféricos de alta performance e hardware para computadores. Esta comunidade oferece um espaço interativo para compartilhar conhecimentos, discutir tendências e analisar produtos relacionados a mouses, teclados, headsets, mousepads e muito mais do hardware. O objetivo do MouseHub é proporcionar uma plataforma informativa, estimulando discussões sobre o mundo do hardware de alta performance para computadores. Os membros podem interagir, compartilhar experiências, obter orientações sobre escolha de periféricos e acessar análises detalhadas, guias de compra, tutoriais e dicas úteis. Em resumo, o MouseHub é um espaço emocionante para a comunidade de entusiastas se reunir, explorar novas tecnologias e aprimorar suas habilidades, mantendo-se atualizada sobre as últimas tendências e lançamentos do mercado.</h2>
        </div>
    </div>
</div>

<div class="container">
    <div class="div-centralizada flex-container">
        <div class="info1">
            <h2>O MouseHub é um projeto dedicado aos entusiastas de periféricos de alta performance e hardware para computadores...</h2>
        </div>
        <div class="info2">
            <h2>Fique à vontade para trocar aquela ideia na nossa comunidade, ou ficar sabendo dos mais novos periféricos do mercado!</h2>
        </div>
    </div>
</div>
</p>

</body>

<!-- Adicione esta seção no final do corpo do HTML -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const carousel = document.getElementById('image-carousel');

        let currentIndex = 0;

        function showImage(index) {
            const items = document.querySelectorAll('.carousel-item');
            items.forEach(item => {
                item.style.transform = `translateX(-${index * 100}%)`;
            });
        }

        function nextImage() {
            currentIndex = (currentIndex + 1) % 3; // Número total de imagens no carrossel
            showImage(currentIndex);
        }

        function prevImage() {
            currentIndex = (currentIndex - 1 + 3) % 3; // Número total de imagens no carrossel
            showImage(currentIndex);
        }

        setInterval(nextImage, 5000); // Muda para a próxima imagem a cada 5 segundos
    });
</script>


</html>