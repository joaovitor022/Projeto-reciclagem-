<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="desciption" content="Projeto PI-Reciclagem">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/Empresa.css">

    <link rel="shortcut icon" href="../Imagens/Logo/icone-logo1.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Empresa</title>
</head>

<body>
    <header>
        <img src="../Imagens/Logo/lixo eletronico about.png"
            alt="Logo simbolo de reciclagem com circuitos eletrônicos">

        <ul>
            <a href="../index.html">
                <li>Home</li>
            </a>
            <a href="../pages/Informativo_Lixo.html">
                <li>Tipos de lixo</li>
            </a>
            <a href="">
                <li>Opção 3</li>
            </a>
        </ul>


        <div class="buttons">
            <a href="../index.html"><button class="cadastro">Sair</button></a>
        </div>
    </header>
    <main>
        <img id="loginem1" src="../Imagens/Empresa/Imagemlogin1.svg" alt="Login empresa">
        <div class="cabe">
            <h1>Nome empresa</h1>
            <span class="placeholder w-75"> </span>
            <img id="bell" src="../Imagens/Empresa/BEll.svg" alt="Bell">

        </div>

    <c:forEach var="post" items="${posts}">
        <section class="paragrafos">
            <div class="paragrafo center">
                    <div class="texto">
                        <p class="placeholder-glow ">
                        <h1><img id="loginem" src="../Imagens/Empresa/Imagemlogin1.svg" alt="Login empresa">Nome do
                            usuário
                        </h1>
                        <p class=" dadoslogin"> Dados de endereço </p>
                        <span class="placeholder col-12"></span>
                        </p>

                            <p class="placeholder-wave">
                                Material: ${post.material}
                            </p>
                            <p class="placeholder-wave">
                                Peso: ${post.peso}
                            </p>
                            <br>
                            <p class="placeholder-wave">
                                Descrição: ${post.descricao}
                            </p>

                        <br>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="button" class="btn btn-outline-success  indi">Indicar interrese </button>
                        </div>

                    </div>

                </div>
            
        </section>
    </c:forEach>

        <div class="buttons">
            <a href="/showPost"><button class="cadastro">Show post</button></a>
        </div>
    </main>
    <footer>
        <div class="listas">
            <ul>
                Lista 1
                <a href="">
                    <li>item 1</li>
                </a>
                <a href="">
                    <li>item 2</li>
                </a>
                <a href="">
                    <li>item 3</li>
                </a>
            </ul>

            <ul>
                Lista 2
                <a href="">
                    <li>item 1</li>
                </a>
                <a href="">
                    <li>item 2</li>
                </a>
                <a href="">
                    <li>item 3</li>
                </a>
            </ul>

            <ul>
                Lista 3
                <a href="">
                    <li>item 1</li>
                </a>
                <a href="">
                    <li>item 2</li>
                </a>
                <a href="">
                    <li>item 3</li>
                </a>
            </ul>
        </div>
        <div class="direitos">
            <p>&copy;2023 ReciclaDev. todos os direitos reservados.</p>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>