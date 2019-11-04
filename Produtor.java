package exercicio;

public class Produtor extends Thread {
	private Contador c;
	private int quantidade;
	
	public Produtor(Contador c, int quantidade) {
		this.c = c;
		this.quantidade = quantidade;
	}
	

	
	public void run() {
		for(int i = 0; i < this.quantidade; i++) {
			try {
				this.c.adicionar();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}


