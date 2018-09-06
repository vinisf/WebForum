package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Postagem;
import dao.DaoPostagem;


@WebServlet("/PostagemServlet")
public class PostagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PostagemServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Postagem postagem = new Postagem();
		postagem.setPergunta(request.getParameter("pergunta"));
		postagem.setDescricao(request.getParameter("descricao"));
		postagem.setTopico(request.getParameter("topico"));
		
		HttpSession sessaoUsuario = request.getSession();
		
		postagem.setId((int)sessaoUsuario.getAttribute("id"));
		
		DaoPostagem topico = new DaoPostagem();
	
		topico.cadastroTopico(postagem);
		RequestDispatcher despatcher = request.getRequestDispatcher("minhasPerguntas.jsp");
		despatcher.forward(request, response);
		
	}

}
