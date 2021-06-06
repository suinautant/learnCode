package sec02.exam03;

public class PrintThread2 extends Thread {
	private int count = 0;

	public void run() {
		try {
			while (true) {
				System.out.println("실행 중");
				count += 1;
				Thread.sleep(1);
			}

		} catch (Exception e) {

		}
		System.out.println("자원 정리");
		System.out.println("실행 종료. 카운트 : " + count);
	}
}
