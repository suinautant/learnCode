package day09.quiz01;

public class TreadTest01 {
	private int num;

	public TreadTest01(int num) {
		this.num = num;
	}

	public void timesTable() {
		for (int i = 1; i < 10; i++) {
			System.out.println(num + " x " + i + " = " + (num * i));
		}
	}

	public static void main(String[] args) {
		TreadTest01 t1 = new TreadTest01(5);
		TreadTest01 t2 = new TreadTest01(7);
		TreadTest01 t3 = new TreadTest01(3);
		t1.timesTable();
		t2.timesTable();
		t3.timesTable();
	}
}
