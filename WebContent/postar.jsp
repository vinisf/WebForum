<%@include file="cabecalho.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div id="pagPrincipal">
	<h1>Faça sua pergunta!</h1> <br>	
	<p>
	<h2>
		Usuario Logado:
		<%=session.getAttribute("nome")%></h2>
	</p>
	
	<form action="PostagemServlet" method="post">
	
	
		<div id="top">
			<span>Tópicos:</span> <br> 
			
			<select name="topico" >
				<option> Escolha uma opção</option>
				<option value="estruturaSequencial">Estrutura Sequencial</option>
				<option value="estruturaDeDecisao">Estrutura De Decisao</option>
				<option value="estruturaDeRepeticao">Estrutura De Repeticao</option>
				<option value="listas">Listas</option>
				<option value="funcoes">Funções</option>
				<option value="strings">Strings</option>
				<option value="arquivos">Arquivos</option>
				<option value="classes">Classes</option>
			</select>
			<br>
		</div>
		
		<div id="perDec"> 
		
		<h3>Pergunta:</h3>  
		<textarea id="pergun" NAME="pergunta" ROWS=6 COLS=40> </textarea>
		
		
	        
	        <br><h3>Descrição</h3><br>
	        
	         <div id="post"> 
	       		<textarea id="descri" NAME="descricao" ROWS=6 COLS=40> </textarea>
	        
	     
				<input type="submit" value="Postar">
			</div>
		</div>
	</form>


</div>
</body>
</html>