package sec02.exam03;

public class PrintThread2 extends Thread {
	private int count = 0;

	public void run() {
		try {
			while (true) {
				System.out.println("���� ��");
				count += 1;
				Thread.sleep(1);
			}

		} catch (Exception e) {

		}
		System.out.println("�ڿ� ����");
		System.out.println("���� ����. ī��Ʈ : " + count);
	}
}
