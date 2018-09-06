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

@WebServlet("/AtualizarCadastroUsuario")
public class AtualizarCadastroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AtualizarCadastroUsuario() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Instacia das Classes Usuario e DaoUsuario
		Usuario usuario = new Usuario();
		DaoUsuario dao = new DaoUsuario();

		// Recebendo dados do jsp:
		usuario.setNome(request.getParameter("nome"));
		usuario.setTelefone(request.getParameter("telefone"));
		usuario.setEndereco(request.getParameter("endereco"));
		usuario.setSexo(request.getParameter("sexo"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setDataNascimento(request.getParameter("dataNascimento"));
		usuario.setPerfil("0");

		try {

			// chamando o metodo buscar para pegar o ID
			Usuario user = dao.buscarUsuario(usuario);
			usuario.setId(user.getId());
			// chamando o metodo para atualizar cadastro
			dao.atualizarCadastroUsuario(usuario);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// redirecionando para a pagina principal
		RequestDispatcher despatcher = request.getRequestDispatcher("principal.jsp");
		despatcher.forward(request, response);
	}

}
