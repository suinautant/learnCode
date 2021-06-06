package exam;

import java.util.Scanner;

public class CircleExam {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		CircleRadius cr = new CircleRadius();

		System.out.print("원의 반지름을 입력하세요 :");
		double r = sc.nextDouble();
		double resultRound = cr.circumstance(r);
		double resultArea = cr.area(r);

		System.out.println("원의 둘레는 " + resultRound + "이며 원의 면적은 " + resultArea + "입니다.");

	}

}
