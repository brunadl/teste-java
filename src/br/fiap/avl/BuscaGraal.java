package br.fiap.avl;

import java.util.Scanner;

public class BuscaGraal {

	public static int comparacoes = 0;
	public static int trocas = 0;
		
	public static void main(String[] args) {
		Scanner le = new Scanner (System.in);
		
		String linhas = new String("9887465451148000419009000124832000123123123345787897237170004189460001248301"
				+ "163891093801823870004190100001244260001238179823710004189890001247310009872"
				+ "3800041890200012493000071982371892738172397198237918723871287398172389719837"
				+ "1927381739871900041898600012476830709849488422990202900041906200012452700099"
				+ "9892898872812121112123888400041891000012446699209095528928928981298912901289");
	
//instancia objetos e declara vari�veis necess�rias;
		String entrada[] = new String[8];
		
//Tarefa 1 (1,0) Elabore a classe AVLCoordenadas baseando na classe AVLInt elaborada em aula.
			  // Nesta AVL o dado armazenado em cada n� ter�: String coordenadas e int chaves
		AVLCoordenadas tree = new AVLCoordenadas();
	
		
//Usa m�todo (j� implementado nessa classe) para separar as coordenadas nas linhas encontradas na 
//anota��o decifrada
		insereCoordenadasVetorEntrada(linhas, entrada);

		
//Tarefa 2 (0,5) Faz uso do m�todo inserirAVL armazenar as coordenadas na AVL
				String valor = le.next();
				//tree.root = tree.inserirH(tree.root, 0);
              // Inserir trecho de c�digo que faz a inser��o na AVL.
		      // Neste ponto do c�digo apenas insere em cada n�  as coordenadas para depois percorrer 
			  // em ordem crescente e a fim de obter as chaves*/
	

//Tarefa 3 (0,5) Percorre a AVL para obter em ordem crescente as coordenadas o trajeto apresentando na tela de sa�da
		  	  // Percorre em ordem crescente  a AVL lendo do teclado um valor inteiro que corresponde a 
			  // chave que foi encontrada no local das coordenadas*/				
		

//Tarefa 4 (0,5) Faz consultas � AVL procurando a sequ�ncia de coordenadas:  1,2,3,1,4,7,8,4,5,6,8,1,6,3,2
			  // Cada consulta na AVL para obter a chave de cada local deve retornar o contador de compara��es. 
			  // Sugest�o use o vetor entrada para obter as coordenadas a serem procuradas*/
		int cont=0;
		
		
//Cria vetor coordenadas com as coordenadas armazenadas no vetor entrada
		String coordenadas[] = new String[8];
		for (int i=0; i<8; i++) {
			coordenadas[i] = entrada[i];
		}

//Tarefa 5 (0,5) Ordena o vetor  usando o m�todo quicksort
			  // Aplica o m�todo quicksort ao vetor gerado 
			

// Tarefa 6 (0,5) Faz consultas no vetor procurando a sequ�ncia de coordenadas: 1,2,3,1,4,7,8,4,5,6,8,1,6,3,2	
			   // Com o prop�sito de comparar a efici�ncia em fazer consultas em vetor ordenado e AVL 
			   // utilize um m�todo de busca adequado e que conte o n�mero de compara��es efetuadas para 
			   // realiza��o de todas as consultas feitas*/
	int contV=0;	


		System.out.println("Numero de comparacoes usando AVL: " + cont );
		System.out.println("Numero de comparacoes usando vetor: " + contV);
		
le.close();
	}



	public static void insereCoordenadasVetorEntrada(String linha, String vetor[]) {
		int k=0;
		for (int i=0; i < linha.length(); i++) { 
			String coord = new String();
			if (linha.charAt(i) == '0' && linha.charAt(i+1) == '0' && linha.charAt(i+2) == '0') {
				coord = (linha.substring(i+3,i+9));
				i=i+9;
				coord = coord.concat(linha.substring(i+3,i+9));
				i=i+9;
				
				vetor[k]= coord;
				k++;
			}
			
		}
	}
	

}
