package br.fiap.controle;

import static java.lang.Integer.parseInt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.fiap.dao.UsuarioDAO;
import br.fiap.entidade.Usuario;


/**
 * Servlet implementation class LoginServlet
 */

@WebServlet(urlPatterns = "/login")

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botao = request.getParameter("botao");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		RequestDispatcher dispatcher;
		
		UsuarioDAO dao = new UsuarioDAO();
		Usuario usuario = dao.logar(email, senha);
		
		if(botao.equalsIgnoreCase("entrar")) {
			// select para verificar se o cliente est� cadastrado
			
			
			request.setAttribute("resposta", false);
			
			if(usuario != null) {
				
				if(usuario.getPermissao().equalsIgnoreCase("ADM") == true) {
					request.setAttribute("usuario", usuario);		
					dispatcher = request.getRequestDispatcher("telaAdm.jsp");
					dispatcher.forward(request, response);
					
					
				} else {
					
					if((usuario.getPermissao()).equalsIgnoreCase("cliente")) {

						
						request.setAttribute("usuario", usuario);						
						dispatcher = request.getRequestDispatcher("telaCliente.jsp");
						dispatcher.forward(request, response);

					}
				}
				
				
			}else {
				request.setAttribute("usuario", request.getAttribute("usuario"));
				request.setAttribute("resposta", "<p style=\"font-size: 23px; color: red\">Email ou senha incorretos!</p>");
				dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);

			}
		}else {
			
			if(botao.equalsIgnoreCase("Cadastrar Dicas/Pistas")) {
				request.setAttribute("usuario", request.getAttribute("usuario"));
				dispatcher = request.getRequestDispatcher("cadastrarPistas.jsp");
				dispatcher.forward(request, response);
			} else {
				
				if(botao.equalsIgnoreCase("Cadastrar Usuário Cliente")) {
					request.setAttribute("usuario", request.getAttribute("usuario"));
					dispatcher = request.getRequestDispatcher("cadastro.jsp");
					dispatcher.forward(request, response);
				} else{
					if(botao.equalsIgnoreCase("Testar Programa")) {
						
						usuario = dao.localizarUsuario(parseInt(request.getParameter("usuarioId")));
						request.setAttribute("usuario", usuario);
						dispatcher = request.getRequestDispatcher("telaCliente.jsp");
						dispatcher.forward(request, response);
					}
				}
				
				
				
			}
			
		}

	}	
}
