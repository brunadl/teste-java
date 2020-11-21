package br.fiap.entidade;

import br.fiap.dao.UsuarioDAO;

public class Local {
	
	private String id_local, pista, arquivo, endereco;
	private long chaveDeAcesso;
	
	
	public Local(String pista, String arquivo, String endereco, String id_local, long chaveDeAcesso) {
		super();
		this.pista = pista;
		this.arquivo = arquivo;
		this.endereco = endereco;
		this.id_local = id_local;
		this.chaveDeAcesso = chaveDeAcesso;
	}
	
	public String getPista() {
		return pista;
	}
	public void setPista(String pista) {
		this.pista = pista;
	}
	public String getArquivo() {
		return arquivo;
	}
	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getId_local() {
		return id_local;
	}
	public void setId_local(String id_local) {
		
		this.id_local = id_local;
	}
	public long getChaveDeAcesso() {
		return chaveDeAcesso;
	}
	public void setChaveDeAcesso(long chaveDeAcesso) {
		this.chaveDeAcesso = chaveDeAcesso;
	}
	
	

}
	
	