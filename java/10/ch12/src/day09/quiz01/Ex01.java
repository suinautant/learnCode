package day09.quiz01;

class User01 extends Thread {
	// 内靛累己
	private Calculators calculators;

	public void setCalculator(Calculators calculators) {
		this.calculators = calculators;
	}

	public void run() {
		calculators.setMemory(100, 1000);
	}
}

class User02 extends Thread {
//	 内靛累己
	private Calculators calculators;

	public void setCalculator(Calculators calculators) {
		this.calculators = calculators;
	}

	public void run() {
		calculators.setMemory(100, 2000);
	}

}

class User03 extends Thread {
//	 内靛累己
	private Calculators calculators;

	public void setCalculator(Calculators calculators) {
		this.calculators = calculators;
	}

	public void run() {
		calculators.setMemory(100, 3000);
	}
}

class Calculators {
	private int memory;
	private int key;

	public int getMemory() {
		return memory;
	}

//	public synchronized void setMemory(int memory, int key) {
	public void setMemory(int memory, int key) {
		this.memory = memory;
		this.key = key;
		try {
			for (int i = 0; i <= 3; i++) {
				memory += i;
				System.out.println(Thread.currentThread().getName() + ": " + this.memory++);
				Thread.sleep(key);
			}
		} catch (Exception e) {

		}

	}
}

public class Ex01 {

	public static void main(String[] args) {

		Calculators cal = new Calculators();

		User01 user1 = new User01();
		user1.setCalculator(cal);

		User02 user2 = new User02();
		user2.setCalculator(cal);

		User03 user3 = new User03();
		user3.setCalculator(cal);

		try {
			user1.start();
			user1.join();
			user2.start();
			user2.join();
			user3.start();
			user3.join();

		} catch (Exception e) {

		}
	}

}
