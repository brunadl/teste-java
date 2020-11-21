package br.fiap.controle;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static java.lang.Integer.parseInt;

import br.fiap.dao.LocalDAO;
import br.fiap.dao.UsuarioDAO;
import br.fiap.entidade.Local;
import br.fiap.entidade.Usuario;

/**
	 * Servlet implementation class LoginServlet
	 */

@WebServlet(urlPatterns = "/Jogo")
	
public class JogoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String nome = request.getParameter("usuarioNome");
//		String email = request.getParameter("usuarioEmail");
//		String senha = request.getParameter("usuarioSenha");
//		String permissao = request.getParameter("usuarioPermissao");
//		int id = parseInt(request.getParameter("usuarioId"));
		
		UsuarioDAO dao = new UsuarioDAO();
		LocalDAO daoL = new LocalDAO();
		
		System.out.println(request.getParameter("usuarioId"));
		//Usuario usuario = dao.localizarUsuario(parseInt(request.getParameter("usuarioId")));
		Local local = daoL.localizarLocal(request.getParameter("coordenada"));

		String botao = request.getParameter("botao");
		RequestDispatcher dispatcher;
		
		if(botao.equalsIgnoreCase("COMECAR")) {
			
			local = daoL.localizarLocal("418902124930");
			request.setAttribute("local", local);
			//request.setAttribute("usuario", usuario);
			
			System.out.println(daoL.emptyAllPista());
			
			if(daoL.emptyAllPista() == true) {
				dispatcher = request.getRequestDispatcher("primeiraTelaJogo.jsp");
			} else {
				request.setAttribute("resposta2", "<p style=\"color: red; margin-bottom: 10px; font-size: 20px;\">O admnistrador deve cadastrar todas as dicas para o usuário poder jogar!</p>");
				dispatcher = request.getRequestDispatcher("telaCliente.jsp");
			}
			
			dispatcher.forward(request, response);
			
			
		} else {
			
			if(botao.equalsIgnoreCase("ir")) {
				
				System.out.println("comando ir");
				local = daoL.localizarLocal(request.getParameter("coordenada"));
				request.setAttribute("local", local);
				//request.setAttribute("usuario", usuario);
				dispatcher = request.getRequestDispatcher("telaSenhaLocal.jsp");
				dispatcher.forward(request, response);
				
			} else {
				
				if(botao.equalsIgnoreCase("acessar")) {
					
					local = daoL.localizarLocal(request.getParameter("localId"));
					Local local2 = null;
					local2 = daoL.localPosterior(request.getParameter("localId"));
					
						
					boolean resposta = daoL.validarSenha(local.getId_local() ,request.getParameter("senhaDeAcesso"));
					
					if(resposta == true) {
						
						if(local2 != null) {
							request.setAttribute("local", local);
							//request.setAttribute("usuario", usuario);
							request.setAttribute("local2", local2);
							dispatcher = request.getRequestDispatcher("telaLocal.jsp");
						} else {
							request.setAttribute("local", local);
							//request.setAttribute("usuario", usuario);
							dispatcher = request.getRequestDispatcher("telaLocal.jsp");
						}
						
						
					} else {
						
						request.setAttribute("local", local);
						request.setAttribute("resposta", "<p style=\"color: red;\">Chave de acesso incorreta!</p>");
						dispatcher = request.getRequestDispatcher("telaSenhaLocal.jsp");
						
					}
					
					dispatcher.forward(request, response);
					
				}
				
			}
		}
		
	}
}
