package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Usuario;
import dao.DaoUsuario;

//Sevlet para apagar cadastro
@WebServlet("/ApagarConta")
public class ApagarConta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ApagarConta() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Instancia dos objetos das Classes Usuario e DaoUsuario
		Usuario usuario = new Usuario();
		DaoUsuario dao = new DaoUsuario();

		// Variavel para pegar a sessão
		HttpSession sessaoUsuario = request.getSession();

		// pegando o email do usuario através da sessão
		usuario.setEmail((String) sessaoUsuario.getAttribute("email"));

		try {
			// chamando o metodo buscar para pegar o ID
			Usuario user = dao.buscarUsuario(usuario);

			// chamando o metodo para apagar cadastro
			dao.deletarCadastro(user);
			RequestDispatcher despatcher = request.getRequestDispatcher("index.jsp");
			despatcher.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
