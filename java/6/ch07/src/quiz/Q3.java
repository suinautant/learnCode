//문제3-1. 반지름을 입력받아서 원의 둘레와 면적을 계산하는 자바프로그램을 작성하시오. 
//단, 원주율은 3.141592로 상수처리하며 원의 둘레와 면적은 메소드를 사용하여 풀이하시오.
//- 출력예 -
//반지름을 입력하세요 : 10
//원의 둘레는 62.83이고 면적은 314.16입니다.

package quiz;

import java.util.Scanner;

class Circle {
	private static final double PI = 3.141592;

	public double round(int radius) {
		return 2 * PI * radius;
	}

	public double area(int radius) {
		return PI * Math.pow(radius, 2);
	}

}

public class Q3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Circle circle = new Circle();

		System.out.print("반지름을 입력하세요 : ");
		int radius = sc.nextInt();
		double round = circle.round(radius);
		double area = circle.area(radius);

		System.out.println("원의 둘레는 " + round + "이고, 면적은 " + area + "입니다.");
	}

}
