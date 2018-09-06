
<%@page import="beans.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>
<%@page import="dao.DaoUsuario"%>

<%@include file="cabecalho.jsp"%>


</head>

<body>




	<div id="duvidas">
		<p>Duvidas Frequentes</p>
		<%
			Postagem topico = new Postagem();
			DaoPostagem busca = new DaoPostagem();
			topico.setTopico(request.getParameter("pesquisa"));
			if (topico.getTopico() == null) {
				topico.setTopico("classes");
			} else {
				topico.setTopico(request.getParameter("pesquisa"));
			}
			for (Postagem resposta : busca.buscarTopico(topico)) {
				request.setAttribute("pergunta", resposta.getPergunta());
				request.setAttribute("descricao", resposta.getDescricao());
				request.setAttribute("idpostagem", resposta.getIdpostagem());
		%>
		<a
			href="mostrarDadosLogado.jsp?codigo=<%=request.getAttribute("idpostagem")%>"><%=request.getAttribute("pergunta")%></a>
		<br>
		<%
			}
		%>
	</div>
	<div id="usuarios">
		<p>Usuarios Frequentes</p>
		<br>
		<%
			DaoUsuario buscar = new DaoUsuario();

			for (Usuario log : buscar.buscarLogs()) {
				request.setAttribute("usuario", log.getNome());
				request.setAttribute("data", log.getDataAcesso());
		%>
		 <p><%=request.getAttribute("usuario")%> 
		 <%=request.getAttribute("data")%></p><br>
		<%
			}
		%>
	</div>




</body>
</html>