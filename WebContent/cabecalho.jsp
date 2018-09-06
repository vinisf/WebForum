<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>PyQuestion-me</title>
	 <link rel="stylesheet" type="text/css" href="css/cleyton.css">	 
	 <link rel="icon" href="imagens/pyquestion.png">
</head>
<body>
<div id="menu">
		<div id="topo">
		
			<nav id="menuOp">
			  <ul class="menu">
			  		<li><a id="opcoes" href="#">Opçoes</a>
			         	<ul>
		                  <li><a href="perfil.jsp">Editar Perfil</a></li>
		                  <li><a href="minhasPerguntas.jsp">Minhas Perguntas</a></li>
		                  <li><a href="postar.jsp">Postar</a></li> 
	                      <li><a href="logoff.jsp">Sair</a></li>
			       		</ul>
					</li>                    
			    </ul>
			</nav>		
	
			<img src="imagens/logo1.png"> 
		
		</div>
		
	</div>

		<div id="estrutura">
			<!-- Conteiner <nav> que vai criar uma area de navegação, ou seja, no menu dentro do site -->
			<!--  -->
			<nav id="selecaoMenu">

				<form action="principal.jsp" method="get">
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