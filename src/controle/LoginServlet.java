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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				Usuario usuario = new Usuario();
				DaoUsuario daoUsuario = new DaoUsuario();

				// Recebendo dados do jsp
				usuario.setEmail(request.getParameter("email"));
				usuario.setSenha(request.getParameter("senha"));

				try {
					if (daoUsuario.login(usuario)) {
						// COLOCAR O USUARIO NA SESSÃO:
						HttpSession sessaoUsuario = request.getSession();
						Usuario user = daoUsuario.buscarUsuario(usuario);

						// pega a sessao da tag e passa os dados do usuario
						sessaoUsuario.setAttribute("id", user.getId());
						sessaoUsuario.setAttribute("email", user.getEmail());
						sessaoUsuario.setAttribute("nome", user.getNome());
						sessaoUsuario.setAttribute("senha", user.getSenha());
						sessaoUsuario.setAttribute("dataNascimento", user.getDataNascimento());
						sessaoUsuario.setAttribute("endereco", user.getEndereco());
						sessaoUsuario.setAttribute("telefone", user.getTelefone());
						sessaoUsuario.setAttribute("sexo", user.getSexo());
						sessaoUsuario.setAttribute("perfil", user.getPerfil());
						
						// CONFIRMAR :CONCLUIDO COM SUCESSO!

						request.setAttribute("status", "Sucesso!");
						java.util.Date dataUtil = new java.util.Date();
						java.sql.Date dataSql = new java.sql.Date(dataUtil.getTime());
						
						
						System.out.println(dataSql);
						user.setDataAcesso(dataSql);
						DaoUsuario buscar= new DaoUsuario();
						Usuario teste = buscar.buscarLog(user);
						if(user.getId()== teste.getId()) {
							System.out.println("passou if");
							buscar.atualizaLog(user);
						}else {
							buscar.cadastroLog(user);
						}

						// REDIRECIONAR PARA PAGINA DE ACESSO:
						RequestDispatcher despatcher = request.getRequestDispatcher("principal.jsp");
						despatcher.forward(request, response);

					} else {
						
						//validando login de acesso
						request.setAttribute("status", "Login Invalido!");

						// REDIRECIONAR PARA PAGINA DE ACESSO:
						RequestDispatcher despatcher = request.getRequestDispatcher("login.jsp");
						despatcher.forward(request, response);

					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
}
