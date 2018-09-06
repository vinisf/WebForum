package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Usuario;
import dao.DaoUsuario;

//Servlet de cadastro
@WebServlet("/SalvarCadastroUsuario")
public class SalvarCadastroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SalvarCadastroUsuario() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Usuario usuario = new Usuario();
		DaoUsuario dao = new DaoUsuario();

		// Recebendo dados do JSP
		usuario.setNome(request.getParameter("nome"));
		usuario.setTelefone(request.getParameter("telefone"));
		usuario.setEndereco(request.getParameter("endereco"));
		usuario.setSexo(request.getParameter("sexo"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setDataNascimento(request.getParameter("dataNascimento"));
		usuario.setPerfil("0	");

		// chamando metodo para cadastro
		dao.cadastroUsuario(usuario);

		// redirecionando para pagina principal
		RequestDispatcher despatcher = request.getRequestDispatcher("login.jsp");
		despatcher.forward(request, response);
	}

}
