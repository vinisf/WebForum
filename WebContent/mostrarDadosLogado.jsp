<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@page import="beans.Respostas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Postagem"%>
<%@page import="dao.DaoPostagem"%>

<%@include file="cabecalho.jsp"%>

</head>
<body>

	<div id="dadosLogado">
	
	<h3>
	<strong>
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
		
	<%
		}
	%>
		</strong>
	</h3>
	
	<h4>
	<p>Respostas:</p>
	<br>
	<%
		Respostas msg = new Respostas();
		DaoPostagem busca = new DaoPostagem();

		msg.setId_postagem((Integer.parseInt(request.getParameter("codigo"))));

		//int valor =  Integer.parseInt(request.getParameter("codigo"));
		for (Respostas resposta : busca.buscarRespostas(msg)) {
			session.setAttribute("resposta", resposta.getMensagem());
			
			
	%>
	<%=session.getAttribute("resposta")%>
	
	

	<br>
	<%
		}
		if (session.getAttribute("id") != null) {
	%>

	<form action="CadastrarRespostaServlet" method="post">

	

		<TEXTAREA name="resposta" ROWS=6 COLS=40>
        </TEXTAREA>

		<input type="submit" value="Postar">
	</form>
	<%
		}
	%>
	</h4>
	</div>
</body>
</html>