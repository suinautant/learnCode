package constant;

import java.util.Scanner;

public class Constant {

	public static void main(String[] args) {
		final double PI = 3.14;
		Scanner sc = new Scanner(System.in);

		System.out.print("반지름을 입력하세요: ");
		double radius = sc.nextDouble();
		double result = PI * Math.pow(radius, 2);
		System.out.println("반 지름 " + radius + "인 원의 면적은 " + result + "입니다.");
	}

}
