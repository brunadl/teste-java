package br.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static java.lang.Integer.parseInt;


import br.fiap.conexao.Conexao;
import br.fiap.entidade.Usuario;

public class UsuarioDAO {
	
	private PreparedStatement ps; // responsavel por realizar as opera��es SQL no banco
	private String sql; //Armazena o comando SQL
	private ResultSet rs; // responsavel por armazenar o resultado d eum select
	private Connection connection; // responsavel por armazenar a conex�ao estabelecida no BD
	
	
	public Usuario logar(String email, String senha) {
		
		Usuario usuario = null;
		
		sql = "select * from usuario where email = ? and senha = ?";
		connection = new Conexao().conectar();

		try {
			ps = connection.prepareStatement(sql);
			ps.setNString(1, email);
			ps.setNString(2, senha);
			rs = ps.executeQuery();
			if(rs.next() == true) {	
				usuario = new Usuario(rs.getString("nome"),email ,senha, rs.getString("permissao"), rs.getInt("id_usuario"));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
	
	public void cadastrar(Usuario usuario) {
		sql = "insert into usuario(nome, email, senha, permissao, id_usuario) values(?, ?, ?, 'CLIENTE', ?)";
		connection = new Conexao().conectar();
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, usuario.getNome());
			ps.setString(2, usuario.getEmail());
			ps.setString(3, usuario.getSenha());
			ps.setInt(4, usuario.getId_usuario());
			ps.execute();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean verificarCadastro(String email) {
		
		boolean resposta = true;
		
		sql = "select * from usuario where email = ?";
		connection = new Conexao().conectar();

		try {
			ps = connection.prepareStatement(sql);
			ps.setNString(1, email);
			rs = ps.executeQuery();
			rs.next();
			rs.getString("email");
			System.out.println(rs.getString("email"));

			
		}catch(SQLException e) {
			resposta = false;
			System.out.println("erro");
			e.printStackTrace();
		}
		
		return resposta;
	}
	public int contagemUsuarios() {
		
		int nUsuarios = -1;
		
		sql = "select count(id_usuario) as numero_usuarios from usuario";
		connection = new Conexao().conectar();

		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next() == true) {	
				nUsuarios = rs.getInt("numero_usuarios");
				System.out.println("nusuarios: " + nUsuarios);
			} 
		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return nUsuarios;
	}
	
	public Usuario localizarUsuario(int id){
		
		Usuario usuario = null;
		
		sql = "select * from usuario where id_usuario = ?";
		connection = new Conexao().conectar();
		
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next() == true) {	
				usuario =  new Usuario(rs.getString("nome"), rs.getString("email"), rs.getString("senha"), rs.getString("permissao"), rs.getInt("id_usuario"));
			} 
		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
}

