package exercicio;

public class Consumidor extends Thread {
	private Contador c;
	private int quantidade;
	
	public Consumidor(Contador c, int quantidade) {
		this.c = c;
		this.quantidade = quantidade;
	}
	
	public void run() {
		for(int i = 0; i < this.quantidade; i++) {
			try {
				this.c.consumir();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
	}
}

