package sec04.exam03;

public class KeyCode {

	public static void main(String[] args) throws Exception {
		int keycode;

		while (true) {
			keycode = System.in.read();
			System.out.println(keycode);

			if (keycode == 'q') {
				break;
			}

		}

	}

}
