<%@include file="cabecalho.jsp"%>
<div id="tabelaCadastro">
	<h1>Perfil</h1>
	<br>


	<form action="AtualizarCadastroUsuario" method="post">

		<table>
			<tr>
				<td>Nome:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="text" id="nome" name="nome"
					required="required" value="<%=session.getAttribute("nome")%>"></td>
			</tr>
			
			<tr>
				<td>Data de nascimento:</td>
			</tr>
			<tr>
				<td><input class="date" type="date" name="dataNascimento"
					pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" placeholder=" xx/xx/xxxx"
					required="required"
					value="<%=session.getAttribute("dataNascimento")%>"></td>
			</tr>
			
			<tr>
				<td>Sexo:</td>
			</tr>
			<tr>
				<td><select name="sexo">
						<option value=""><%=session.getAttribute("sexo")%></option>
						<option value="masculino">Masculino</option>
						<option value="feminino">Feminino</option>
						<option value="outro">Outro</option>
				</select></td>
			</tr>

			<tr>
				<td>Telefone:</td>
			</tr>
			<tr>
				<td><input class="telefone" type="tel" id="telefone" name="telefone"
					placeholder="(xx) xxxxx-xxxx" required="required"
					value="<%=session.getAttribute("telefone")%>"></td>
			</tr>

			<tr>
				<td>Endereço:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="text" id="endereco" name="endereco"
				 	required="required" value="<%=session.getAttribute("endereco")%>"></td>
			</tr>
			<tr>
				<td>Email:</td>
			</tr>
			<tr>
				<td><input class="selecao" type="email" id="email" name="email"
					placeholder="nome@exemplo.com" required="required"
					value="<%=session.getAttribute("email")%>"></td>
			</tr>
			<tr>
				<td>Senha:</td>
			</tr>
			<tr>
				<td><input id="senha" type="password" id="senha" name="senha"
					required="required" value="<%=session.getAttribute("senha")%>"></td>
			</tr>
		</table>
		<br /> <input id="botao" type="submit" value="Salvar"> <a
			href="apagarConta.jsp">Apagar conta</a>

	</form>
</div>
</body>
</html>