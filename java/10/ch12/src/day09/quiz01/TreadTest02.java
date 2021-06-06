package day09.quiz01;

public class TreadTest02 extends Thread {
	private int num;

	public TreadTest02(int num) {
		this.num = num;
	}

	public void run() {
		for (int i = 1; i < 10; i++) {
			System.out.println(num + " x " + i + " = " + (num * i));
		}
	}

	public static void main(String[] args) {
		TreadTest02 t1 = new TreadTest02(5);
		TreadTest02 t2 = new TreadTest02(7);
		TreadTest02 t3 = new TreadTest02(3);
		t1.start();
		t2.start();
		t3.start();
	}

}
