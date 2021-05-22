package quiz;

public class QuizRandom {

	public static void main(String[] args) {
		int loop = 5;
		random(0, 9, loop);
		random(1, 10, loop);
		random(1, 100, loop);
		random(101, 500, loop);
		random(151, 200, loop);
		random(50, 100, loop);
		random(0, 100, loop);
		random(0, 99, loop);
		System.out.println((int) '0' + " " + (int) '9');

	}

	public static void random(int min, int max, int loop) {
		System.out.print("¹®Á¦. " + min + "~" + max + " >>>  ");
		for (int i = 0; i < loop; i++) {
			System.out.print((int) (Math.random() * (max - min)) + min + 1);
			if (i != loop - 1) {
				System.out.print(", ");
			}

		}
		System.out.println();

	}

}
