
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>
<%@include file="cabecalho.jsp"%>
</head>
<body>
	<div id="minhasPerguntas">
	
	<%
		Postagem postagem = new Postagem();
		DaoPostagem busca = new DaoPostagem();

		postagem.setId((Integer) session.getAttribute("id"));
		for (Postagem resposta : busca.buscarPostagem(postagem)) {
			session.setAttribute("pergunta", resposta.getPergunta());
			session.setAttribute("descricao", resposta.getDescricao());
			session.setAttribute("idpostagem", resposta.getIdpostagem());
	%>
	
		<nav>
			<h3> <a href="mostrarDadosLogado.jsp?codigo=<%=session.getAttribute("idpostagem")%>"><%=session.getAttribute("pergunta")%></a></h3>
			
			<form action="ApagarPostagemServlet" method="post">
			<%session.setAttribute("idpost", session.getAttribute("idpostagem"));%>
			<input type="submit"  value="Apagar">
			</form>
			<%
				}
			%>
		</nav>
	
	</div>
</body>
</html>