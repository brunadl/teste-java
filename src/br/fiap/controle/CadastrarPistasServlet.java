package br.fiap.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.fiap.dao.LocalDAO;
import br.fiap.dao.UsuarioDAO;
import br.fiap.entidade.Local;
import br.fiap.entidade.Usuario;

/**
 * Servlet implementation class CadastrarPistarServlet
 */
@WebServlet("/CadastrarPistas")
public class CadastrarPistasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String botao = request.getParameter("botao");
		RequestDispatcher dispatcher;
		LocalDAO dao = new LocalDAO();
		
		
		if(botao.equalsIgnoreCase("Cadastrar Dicas/Pistas")){
			dispatcher = request.getRequestDispatcher("cadastrarPistas.jsp");
			dispatcher.forward(request, response);
		} else {
			if(botao.equalsIgnoreCase("Cadastrar Pista")) {
				
				String id_local = request.getParameter("id_local");
				String pista = request.getParameter("pista");
		
				int resposta = dao.cadastrarPista(id_local, pista);
				
				if(resposta == 1) {
					
					request.setAttribute("resposta", "<p style=\"font-size: 23px; color: green\">Pista cadastrada com sucesso!!</p>");
					dispatcher = request.getRequestDispatcher("cadastrarPistas.jsp");
					dispatcher.forward(request, response);
					
				} else {
					
					if(resposta == 2) {
						
						request.setAttribute("resposta", "<p style=\"font-size: 23px; color: red\">Pista já cadastrada!</p>");
						dispatcher = request.getRequestDispatcher("cadastrarPistas.jsp");
						dispatcher.forward(request, response);
						
					}
				}
			}
		}
		
	}	
}
