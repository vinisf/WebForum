 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>PyQuestion-me</title>
	<link rel="stylesheet" type="text/css" href="css/cleyton.css">
	<link rel="stylesheet" type="text/css" href="css/cadastro.css">
</head>

<body>
	<div id="menu">
		<div id="topo">

			<img src="imagens/logo1.png"> 
			<a href="login.jsp"> <input 	type="button" value="LOGIN"> </a> 

		</div>
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
	

	<div id="tabelaCadastro">
	<h1>Cadastre - se</h1>

	<form action="SalvarCadastroUsuario" method="post">

		<table>
			<tr>
				<td>Nome:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="text" id="nome" name="nome"
					required="required"></td>
			</tr>

			<tr>
				<td>Data de nascimento:</td>
			</tr>
			<tr>
				<td><input class="date" type="date" name="dataNascimento"
					pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" placeholder=" xx/xx/xxxx"
					required="required"></td>
			</tr>

			<tr>
				<td>Sexo:</td>
			</tr>
			<tr>
				<td><select name="sexo" id="op" >
						<option value=""></option>
						<option value="masculino">Masculino</option>
						<option value="feminino">Feminino</option>
						<option value="outros">Outros</option>
				</select></td>
			</tr>
			
			<tr>
				<td>Telefone:</td>
			</tr>
			<tr>
				<td><input class="telefone" type="tel" id="telefone"
					name="telefone" placeholder="(xx) xxxxx-xxxx" required="required"></td>
			</tr>

			<tr>
				<td>Endereço:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="text" id="endereco"
					name="endereco" required="required"></td>
			</tr>

			<tr>
				<td>Email:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="email" id="email" name="email"
					placeholder="nome@exemplo.com" required="required"></td>
			</tr>
			
			<tr>
				<td>Senha:</td>
			</tr>
			<tr>
				<td><input id="senha" type="password" id="senha"
					name="senha" required="required"></td>
			</tr>
		</table>
		
		<input id="botao" type="submit" value="Cadastrar">

	</form>
</div>

<div id="frase">
	<h1><span>
	<span id="print">print </span><span class="par">(</span>'junte-se a nós e comece a participar!'<span class="par">)</span>
	</span></h1>
</div>

</body>
</html>
