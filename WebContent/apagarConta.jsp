<%@include file="cabecalho.jsp"%>


</head>
<body>
	<div id="apagar">
		
		<br>
		<h1> Apagar conta </h1> <br>
		
		<br>
		<h3> Usuario Logado: <%=session.getAttribute("nome")%> </h3>
		<br>
		<form action="ApagarConta" method="post">
			<input type="submit" value="Excluir Conta">
		</form>

	</div>
</body>
</html>