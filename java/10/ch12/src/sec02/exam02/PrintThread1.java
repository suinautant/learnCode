package sec02.exam02;

public class PrintThread1 extends Thread {
	private boolean stop;
	private int count = 0;

	public void setStop(boolean stop) {
		this.stop = stop;
	}

	public void run() {
		while (!stop) {
			System.out.println("���� ��");
			count += 1;
		}
		System.out.println("�ڿ� ����");
		System.out.println("���� ����. ī��Ʈ : " + count);
	}
}
