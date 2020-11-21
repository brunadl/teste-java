package br.fiap.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String caminho = "jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL";
	private String senha = "190500";
	private String login = "rm81773";
	private Connection conexao;
	
	public Connection conectar() {
		try {
			Class.forName(driver);
			conexao = DriverManager.getConnection(caminho, login, senha);
		}
		catch(ClassNotFoundException e) {
			System.out.println("Erro ao carregar o driver de conexao1\n"+e);
		}
		catch(SQLException e) {
			System.out.println("Erro ao carregar o login da conexao2\n"+e);
		}
		return conexao;
	}
}

