package br.fiap.avl;

import br.fiap.dao.LocalDAO;

public class Testes {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		AVLCoordenadas tree = new AVLCoordenadas();
		LocalDAO local = new LocalDAO();
		local.addLocaisNaArvore(tree);
		
		System.out.println(tree.buscarDado(tree.root, "418910124466").getEndereco());
	}

}
