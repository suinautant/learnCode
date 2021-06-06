package sec02.exam02;

public class PrintThread1 extends Thread {
	private boolean stop;
	private int count = 0;

	public void setStop(boolean stop) {
		this.stop = stop;
	}

	public void run() {
		while (!stop) {
			System.out.println("실행 중");
			count += 1;
		}
		System.out.println("자원 정리");
		System.out.println("실행 종료. 카운트 : " + count);
	}
}
