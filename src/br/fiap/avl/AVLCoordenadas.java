package br.fiap.avl;
import static java.lang.Long.parseLong;

import br.fiap.entidade.Local;


public class AVLCoordenadas {

	private class ARVORE{
		 Local dado;
		 ARVORE dir;
		 ARVORE esq;
		 int hEsq, hDir;
		}

	public ARVORE root = null;
	
	public ARVORE inserirH(ARVORE p, Local info) {
		if (p == null) { //n� inserido sempre ser� n� folha
			p=new ARVORE();
			p.dado = info;
			p.esq = null;
			p.dir = null;
			p.hDir=0;
			p.hEsq=0;
		    }
		else if (parseLong(p.dado.getId_local()) > parseLong(info.getId_local())){
			p.esq= inserirH (p.esq, info);
			if (p.esq.hDir > p.esq.hEsq) //Altura do n� ser� a maior
			    p.hEsq = p.esq.hDir + 1; //altura dos seus filhos
			else
			    p.hEsq = p.esq.hEsq + 1;
			}
		     else {
			p.dir=inserirH(p.dir, info);
			if (p.dir.hDir > p.dir.hEsq)
			    p.hDir = p.dir.hDir + 1;
			else
			    p.hDir = p.dir.hEsq + 1;
		        }
		
		return p;
	}

	public void mostraFB(ARVORE p) {
		if (p != null) {
				mostraFB(p.esq);
				System.out.println(p.dado.getId_local());
				mostraFB(p.dir);
		}
	}
	
	 public Local buscarDado(ARVORE p, String info) {
		 
		if (p == null) {

	         return null;  // missing from tree

	    } else if (parseLong(info) < parseLong(p.dado.getId_local())) {

	         return buscarDado(p.esq, info);

	    } else if (parseLong(info) > parseLong(p.dado.getId_local())) {

	         return buscarDado(p.dir, info);

	    } else {

	         return p.dado;  // found it
	    }
		 
	}
	
	 
}
