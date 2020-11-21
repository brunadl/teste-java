package br.fiap.entidade;

public class Usuario {
	
	private String nome, email, senha, permissao;
	private int id_usuario;

	public Usuario(String nome, String email, String senha, String permissao, int id_usuario) {
		super();
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.permissao = permissao;
		this.id_usuario = id_usuario;
	}
	
	
	
	
	public int getId_usuario() {
		return id_usuario;
	}


	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getPermissao() {
		return permissao;
	}

	public void setPermissao(String permissao) {
		this.permissao = permissao;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
