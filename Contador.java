package exercicio;

public class Contador {
	private int capacidade;
	private int nivel;
	
	public Contador(int c, int n) {
		this.capacidade = c;
		this.nivel = n;
	}
	
	public synchronized void adicionar() throws InterruptedException {
		//System.out.println("Nível atual: " + this.nivel);
		
		while(this.nivel == this.capacidade) {
			this.wait();
		}
		
		this.nivel++;
		this.notifyAll();
	}
	
	public synchronized void consumir() throws InterruptedException {
		//System.out.println("Nível atual: " + this.nivel);

		while(this.nivel == 0) {
			this.wait();
		}
		
		this.nivel--;
		this.notifyAll();
	}
	
	public int getNivel() {
		return this.nivel;
	}
}
