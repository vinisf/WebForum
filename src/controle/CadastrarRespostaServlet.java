package controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Respostas;
import dao.DaoPostagem;
@WebServlet("/CadastrarRespostaServlet")
public class CadastrarRespostaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CadastrarRespostaServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Respostas cadastra = new Respostas();
		DaoPostagem dao = new DaoPostagem();
		HttpSession sessao = request.getSession();
	
		
		cadastra.setMensagem(request.getParameter("resposta"));
		cadastra.setId_postagem((int)sessao.getAttribute("idpostagem"));
		cadastra.setId((int)sessao.getAttribute("id"));
		
		
		dao.cadastroResposta(cadastra);
		request.setAttribute("codigo", sessao.getAttribute("idpostagem"));
		RequestDispatcher despatcher = request.getRequestDispatcher("mostrarDadosLogado.jsp?codigo="+(sessao.getAttribute("idpostagem")));
		despatcher.forward(request, response);
		
	}

}
