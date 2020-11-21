package br.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.fiap.avl.AVLCoordenadas;
import br.fiap.conexao.Conexao;
import br.fiap.entidade.Local;
import br.fiap.entidade.Usuario;

import static java.lang.Long.parseLong;
import static java.lang.Integer.parseInt;


public class LocalDAO {
	
	private PreparedStatement ps; // responsavel por realizar as opera��es SQL no banco
	private String sql; //Armazena o comando SQL
	private String sql2;
	private ResultSet rs; // responsavel por armazenar o resultado d eum select
	private Connection connection; // responsavel por armazenar a conex�ao estabelecida no BD
	
	public void addLocaisNaArvore(AVLCoordenadas tree) {
		
			
			sql = "select * from local";
			connection = new Conexao().conectar();

			try {
				ps = connection.prepareStatement(sql);
				rs = ps.executeQuery();
				
				
				while(rs.next()) {
					
					
					tree.root = tree.inserirH(tree.root,new Local(rs.getString("pista"), rs.getString("arquivo"), rs.getString("nome_local"), rs.getString("id_local"), parseLong(rs.getString("chave_acesso"))));
					

				}
				
				tree.mostraFB(tree.root);
		
				
			}catch(SQLException e) {
				e.printStackTrace();
			}
				
	}
	
	public int cadastrarPista(String id_local, String pista) {
		
		boolean emptyPist = emptyPista(id_local);
		int resultado = 0;
		
		
		if(emptyPist == false) {
			sql = "update local set pista = ? where id_local = ?";
			sql2 = "commit";
			
			connection = new Conexao().conectar();
			try {
				ps = connection.prepareStatement(sql);
				ps.setString(1, pista);
				ps.setString(2, id_local);
				ps.execute();
				System.out.println("boa!");
				
				ps = connection.prepareStatement(sql2);
				ps.execute();
				
				resultado =  1;
				
				
				
			} catch(SQLException e) {
				e.printStackTrace();
			}
		} else {
			
			if(emptyPist == true) {
				resultado = 2;
				
			} else {
				System.out.println("erro");
				resultado =  3;
			}
		}
		
		return resultado;
		
	}
	
	public boolean emptyPista(String id_local) {
		sql = "select * from local where id_local = ?";
		connection = new Conexao().conectar();
		String dica = null;
		
		try {
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, id_local);
			rs = ps.executeQuery();
			rs.next();
			
			dica = rs.getString("PISTA");
			System.out.println("1. A Pista do local é: " + dica);
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		if(dica == null) {
			return false;
		} else {
			return true;
		}
	}
	
	
	public boolean emptyAllPista() {
		
		String[] vetor = new String[8];
		
		vetor[0] = "419009124832";
		vetor[1] = "418946124830";
		vetor[2] = "419010124426";
		vetor[3] = "418989124731";
		vetor[4] = "418902124930";
		vetor[5] = "418986124768";
		vetor[6] = "419062124527";
		vetor[7] = "418910124466";
		
		int results = 0;
		
		for(int i=0; i < 8; i++) {
			
			sql = "select * from local where id_local = ?";
			connection = new Conexao().conectar();
			String dica = null;
			
			try {
				
				ps = connection.prepareStatement(sql);
				ps.setString(1, vetor[i]);
				rs = ps.executeQuery();
				rs.next();
				
				dica = rs.getString("PISTA");
				System.out.println("1. A Pista do local é: " + dica);
				
				
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
			if(dica != null) {
				results += 1;
			}
		}
		
		if(results == 8) {
			return true;
		} else {
			return false;
		}
		
	}
	
	public Local localizarLocal(String id) {
		
		Local local = null;
		
		sql = "select * from local where id_local = ?";
		connection = new Conexao().conectar();
		
		try {
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			
			local = new Local(rs.getString("pista"), rs.getString("arquivo"), rs.getString("nome_local"), rs.getString("id_local"), rs.getLong("chave_acesso"));
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return local;
	}
	
	public boolean validarSenha(String id, String senha) {
		
		sql = "select chave_acesso from local where id_local = ?";
		connection = new Conexao().conectar();
		
		try {
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			
			String pista = rs.getNString("chave_acesso");
			
			if(pista.equalsIgnoreCase(senha)) {
				return true;
			} else {
				return false;
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public Local localPosterior(String id) {
		
		Local local2 = null;
		LocalDAO dao = new LocalDAO();
		sql = "select id_local from local where id_local > ? and rownum = 1 order by id_local ASC";
		connection = new Conexao().conectar();
		
		try {
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			
			String id2 = rs.getString("id_local");
			
			local2 = dao.localizarLocal(id2);
			

		} catch(SQLException e) {
			e.printStackTrace();
			
		}
		
		return local2;
	 }
 
}
