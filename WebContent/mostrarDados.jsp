
<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@page import="beans.Respostas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>PyQuestion-me</title>
<link rel="stylesheet" type="text/css" href="css/sistema.css">
<div id="menu">
	<div id="topo">

		<img src="imagens/logo1.png"> <a href="login.jsp"> <input
			type="button" value="LOGIN">
		</a> <a href="cadastroUsuario.jsp"> <input type="button"
			value="CADASTRO">
		</a>

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


</head>
<body>
	<%
		Postagem id = new Postagem();
		DaoPostagem buscar = new DaoPostagem();

		id.setIdpostagem(Integer.parseInt(request.getParameter("codigo")));

		for (Postagem resposta : buscar.buscarIdPostagem(id)) {
			session.setAttribute("pergunta", resposta.getPergunta());
			session.setAttribute("descricao", resposta.getDescricao());
			session.setAttribute("idpostagem", resposta.getIdpostagem());
	%>
	<%=session.getAttribute("pergunta")%>
	<%=session.getAttribute("descricao")%>
	<br>
	<%
		}
	%>
	<p>Respostas:</p>
	<br>
	<%
		Respostas msg = new Respostas();
		DaoPostagem busca = new DaoPostagem();

		msg.setId_postagem((Integer.parseInt(request.getParameter("codigo"))));

		//int valor =  Integer.parseInt(request.getParameter("codigo"));
		for (Respostas resposta : busca.buscarRespostas(msg)) {
			session.setAttribute("resposta", resposta.getMensagem());
			session.setAttribute("teste", resposta.getId_postagem());
	%>
	<%=session.getAttribute("resposta")%>

	<br>
	<%
		}
		if (session.getAttribute("id") != null) {
	%>
	<form action="CadastrarRespostaServlet" method="post">

		<br>Resposta:<br>

		<TEXTAREA name="resposta" ROWS=6 COLS=40>
        </TEXTAREA>

		<input type="submit" value="Postar">
	</form>
	<%
		}
	%>

</body>
</html>