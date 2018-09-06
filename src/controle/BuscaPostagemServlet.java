package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Postagem;
import dao.DaoPostagem;


@WebServlet("/BuscaPostagemServlet")
public class BuscaPostagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public BuscaPostagemServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Postagem topico = new Postagem();
		DaoPostagem busca = new DaoPostagem();
		
		topico.setTopico(request.getParameter("pesquisa"));
		try {
		
		HttpSession sessaoTopico = request.getSession();
		

		// pega a sessao da tag e passa os dados do usuario
		for(Postagem resposta: busca.buscarTopico(topico)) {
		request.setAttribute("pergunta", "pesquisa");
		sessaoTopico.setAttribute("pergunta", resposta.getPergunta());
		sessaoTopico.setAttribute("descricao", resposta.getDescricao());
		sessaoTopico.setAttribute("topico", resposta.getTopico());
	
		}
		
		RequestDispatcher despatcher = request.getRequestDispatcher("paginaRetornoBusca.jsp");
		despatcher.forward(request, response);
		System.out.println("passou");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
