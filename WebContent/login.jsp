 <%@ page language="java" contentType="text/html; charset=utf-8"
        pageEncoding="utf-8"%>

    <!DOCTYPE html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>PyQuestion-me</title>
	<link rel="stylesheet" type="text/css" href="css/sistema.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>

    <body>
        <div id="menu">
            <div id="topo">

                <img src="imagens/logo1.png"> 
            </div>

            <div id="estrutura">
                <!-- Conteiner <nav> que vai criar uma area de navegação, ou seja, no menu dentro do site -->
                <!--  -->
                <nav id="selecaoMenu">

                    <form action="index.jsp" method="get">
                        <ul type="disc">

                            <button type="submit" name="pesquisa" value="estruturaSequencial">
                                Estrutura Sequencial</button>
                            <button type="submit" name="pesquisa" value="estruturaDeDecisao">Estrutura
                                De Decisao</button>
                            <button type="submit" name="pesquisa" value="estruturaDeRepeticao">Estrutura
                                De Repeticao</button>
                            <button type="submit" name="pesquisa" value="listas">Listas</button>
                            <button type="submit" name="pesquisa" value="funcoes">Funções</button>
                            <button type="submit" name="pesquisa" value="strings">Strings</button>
                            <button type="submit" name="pesquisa" value="arquivos">Arquivos</button>
                            <button type="submit" name="pesquisa" value="classes">Classes</button>
                        </ul>
                    </form>

                </nav>
            </div>
        </div>



        <div id="conta">
            <h1>Vamos lá!</h1>
            <h3>Entre com o seu email e senha.</h3>

            <form action="LoginServlet" method="post">

                <!-- RETORNO DO LOGIN(MENSAGEM DE ERRO) -->
                <%
                    if (request.getAttribute("status") == null)
                        request.setAttribute("status", "");
                %>

                <p style="color: red;"><%=request.getAttribute("status")%></p>

                <div id="login">

                    <input type="email" name="email" placeholder="E-mail">
                </div>
                <div id="senha">
                    <input type="password" name="senha" placeholder="Senha">
                </div>

                <div class="organizador">
                    <div id="salvar">

                        <input type="submit" value="  ENTRAR  " id="btnlogin"
                           >
                    </div>
                </div>
                <h4>
                    Não tem uma conta?<br /> <a href="cadastroUsuario.jsp">
                    Cadastre-se já!</a>
                </h4>
            </form>
        </div>

        <div id="frase">
            <h1>
                <span><span id="print">print</span><span class="par">(</span>'entre
                    e faça sua pergunta!'<span class="par">)</span></span>
            </h1>
        </div>
    </body>
    </html>