package quiz;
import java.util.Scanner;

public class Quiz09 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("ù ��°: ");
		double double1 = sc.nextDouble();
		System.out.print("ù ��°: ");
		double double2 = sc.nextDouble();

		System.out.println("-------------------");
		if (double2 == 0 | double2 == 0.0) {
			System.out.println("���:���Ѵ�");
		} else {
			double result = double1 / double2;
			System.out.println("���: " + result);

		}
	}

}
