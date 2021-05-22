package exam;

public class Ex04 {

	public static void main(String[] args) {
		for (int x = 1; x <= 100; x++) {
			for (int y = 1; y <= 100; y++) {
				if ((4 * x) + (5 * y) == 60) {
					System.out.println("(" + x + ", " + y + ")");
				}

			}

		}
	}

}
