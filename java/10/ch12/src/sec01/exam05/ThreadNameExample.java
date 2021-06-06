package sec01.exam05;

import java.awt.Toolkit;

import sec01.exam02.BeepTask;

public class ThreadNameExample {
	public static void main(String[] args) {
		Thread thread = new Thread(new Runnable() {

			@Override
			public void run() {
				Toolkit toolkit = Toolkit.getDefaultToolkit();
				for (int i = 0; i < 5; i++) {
//					toolkit.beep();
					System.out.println("¿õ");
					try {
						Thread.sleep(500);
					} catch (Exception e) {
					}
				}
			}
		});
		thread.start();

		for (int i = 0; i < 5; i++) {
			System.out.println("¶ò");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
			}
		}
	}

}
