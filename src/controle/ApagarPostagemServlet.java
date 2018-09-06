package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import beans.Postagem;
import beans.Usuario;
import dao.DaoPostagem;
import dao.DaoUsuario;

/**
 * Servlet implementation class ApagarPostagemServlet
 */
@WebServlet("/ApagarPostagemServlet")
public class ApagarPostagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApagarPostagemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Instancia dos objetos das Classes Usuario e DaoUsuario
				Postagem posteagem = new Postagem();
				DaoPostagem dao = new DaoPostagem();
				
				// Variavel para pegar a sessão
				HttpSession sessaoUsuario = request.getSession();
				
			 	posteagem.setIdpostagem((int)sessaoUsuario.getAttribute("idpost"));
				try {
					// chamando o metodo buscar para pegar o ID
					

					// chamando o metodo para apagar cadastro
					System.out.println(posteagem.getIdpostagem());
					dao.deletarPostagem(posteagem);
					RequestDispatcher despatcher = request.getRequestDispatcher("minhasPerguntas.jsp");
					despatcher.forward(request, response);

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

}
