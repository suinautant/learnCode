package sec01.exam02;

import java.awt.Toolkit;

public class BeepTask implements Runnable {
	public void run() {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for (int i = 0; i < 5; i++) {
//			toolkit.beep();
			System.out.println("¿õ");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
			}
		}
	}
}
