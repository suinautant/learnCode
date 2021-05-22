package exam;

public class Ex03 {

	public static void main(String[] args) {
		int count = 0; 
		while (true) {
			int num1 = (int) (Math.random() * 6) + 1;
			int num2 = (int) (Math.random() * 6) + 1;
			count += 1;
			System.out.println("(" + num1 + ", " + num2 + ")");

			if ((num1 + num2) == 5) {
				break;
			}
		}
		System.out.println(count + "번 반복 되었습니다.");
	}

}
