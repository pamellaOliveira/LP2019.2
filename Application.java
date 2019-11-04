package exercicio;

public class Application {
	public static void main(String[] args) throws Exception {
		Contador c = new Contador(100000, 0);
		
		
		Produtor p1 = new Produtor(c,50000);
		Produtor p2 = new Produtor(c, 50000);
		
		Consumidor c1 = new Consumidor(c, 25000);
		Consumidor c2 = new Consumidor(c, 25000);
		Consumidor c3 = new Consumidor(c, 25000);
		Consumidor c4 = new Consumidor(c, 25000);
		
		
		Allstart(p1,p2,c1,c2,c3,c4);
		Alljoin(p1,p2,c1,c2,c3,c4);
		System.out.println(c.getNivel());
		
	}

	private static void Alljoin(Thread ...threads) throws Exception{
		for (Thread t : threads) {
			t.join();	
			
		}
	}

	private static void Allstart(Thread ...threads) {
		for (Thread t : threads) {
			t.start();	
			
		}
		
	}
	
}
