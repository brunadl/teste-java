package br.fiap.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.fiap.dao.UsuarioDAO;
import br.fiap.dao.UsuarioDAO;
import br.fiap.entidade.Usuario;

/**
 * Servlet implementation class CadastroServlet
 */

@WebServlet(urlPatterns = "/cadastro")
public class CadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		RequestDispatcher dispatcher;
		PrintWriter out  = response.getWriter();
		UsuarioDAO dao = new UsuarioDAO();
		
		if(dao.verificarCadastro(email) == true) {
			// enviar mensagem para usuario informando que j� possui cadastro
			
			request.setAttribute("resposta", "<style>#campoLogin form{height: 90%;}</style><p style=\"margin-top: -10px; font-size: 23px; color: red\">Já existe um cliente cadastrado com esse email!</p>");
			dispatcher = request.getRequestDispatcher("cadastro.jsp");
			dispatcher.forward(request, response);
		}else {	
			
			int id = (dao.contagemUsuarios()+1);
			System.out.println(id);
			Usuario usuario = new Usuario(nome, email, senha, "USUARIO", id);
			dao.cadastrar(usuario);
			
			if(dao.logar(email, senha) != null) {
				request.setAttribute("resposta", "<style>#campoLogin form{height: 90%;}</style><p style=\" margin-top: -10px; font-size: 23px; color: green\">Cliente cadastrado com sucesso!</p>");
				dispatcher = request.getRequestDispatcher("cadastro.jsp");
				dispatcher.forward(request, response);
			}
		}
		
	}
	
	

}
