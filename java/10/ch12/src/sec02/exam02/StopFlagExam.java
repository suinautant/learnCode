package sec02.exam02;

public class StopFlagExam {
	public static void main(String[] args) {
		PrintThread1 pTh = new PrintThread1();
		pTh.start();

		try {
			Thread.sleep(1);
		} catch (Exception e) {

		}
		pTh.setStop(true);
	}

}
