<%@page import="beans.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>
<%@page import="dao.DaoUsuario"%>
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
<div id="divBusca">
		<form action="paginaRetornoBusca.jsp" method="get">
			<input type="text" id="txtBusca" name="pesq"
				placeholder="QUAL SUA DÚVIDA?" />
			<button type="submit" id="btnBusca">Ir</button>
		</form>
	</div>
	<div id="duvidas">
		<p>Duvidas Frequentes</p>
	<%
		Postagem topico = new Postagem();
		DaoPostagem busca = new DaoPostagem();

		topico.setTopico(request.getParameter("pesq"));
	
		for (Postagem resposta : busca.buscarPostagemLike(topico)) {
			request.setAttribute("pergunta", resposta.getPergunta());
			request.setAttribute("descricao", resposta.getDescricao());
			request.setAttribute("idpostagem", resposta.getIdpostagem());
	%>
	<a href="mostrarDados.jsp?codigo=<%=request.getAttribute("idpostagem")%>"><%=request.getAttribute("pergunta")%></a>
	<br>
	<%
		}
	%>
</div>
		<div id="usuarios">
		<p>Usuarios Frequentes</p>
		<%
			DaoUsuario buscar = new DaoUsuario();
			
			for (Usuario log : buscar.buscarLogs()) {
				request.setAttribute("usuario",log.getNome());
				request.setAttribute("data",log.getDataAcesso());
		%>
<%=request.getAttribute("usuario")%>
<%=request.getAttribute("data")%><br>
		<%
			}
		%>
	</div>
	</group>
</body>
</html>