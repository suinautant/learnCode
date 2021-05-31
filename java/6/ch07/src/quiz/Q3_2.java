//문제3-2. 문제3-1에서 부피를 계산하는 기능을 상속을 이용하여 자식클래스를 출력하는 자바프로그램을 작성하시오. 
//단, 구의 부피는 (4/3)*π*r^3임.
//- 출력예 -
//반지름을 입력하세요 : 5
//원의 둘레는 00이고 면적은 000입니다.
//구의 반지름은 5이며 부피는 523.333입니다.

package quiz;

import java.util.Scanner;

class Circle2 {
	private static final double PI = 3.141592;

	public double round(int radius) {
		return 2 * PI * radius;
	}

	public double area(int radius) {
		return PI * Math.pow(radius, 2);
	}

}

class Circle3 extends Circle2 {
	public double volume(int radius) {
		return area(radius) * radius * 4 / 3;
	}
}

public class Q3_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Circle3 circle = new Circle3();

		System.out.print("반지름을 입력하세요 : ");
		int radius = sc.nextInt();
		double round = circle.round(radius);
		double area = circle.area(radius);
		double volume = circle.volume(radius);

		System.out.println("원의 둘레는 " + round + "이고, 면적은 " + area + "입니다.");
		System.out.println("구의 반지름은 " + radius + "이며 부피는 " + volume + "입니다.");
	}

}