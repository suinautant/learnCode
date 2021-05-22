//문제2. 반지름을 입력받아서 원의 둘레와 면적을 계산하는 자바프로그램을 작성하시오. 단, 원주율은 3.141592이며 상수처리하시오.
//- 출력예 -
//원의 반지름을 입력하세요 : 10
//반지름 10인 원의 둘레는 62.83이고 면적은 314.16입니다.

package example;

import java.util.Scanner;

public class ex2 {

	public static void main(String[] args) {
		final double PI = 3.141592;
		double r, circum, area;
		Scanner sc = new Scanner(System.in);

		System.out.print("원의 반지름을 입력하세요 : ");
		r = sc.nextDouble();
		circum = 2 * PI * r;
		area = PI * Math.pow(r, 2);

		System.out.println("반지름 " + r + "인 원의 둘레는 " + circum + "이고 면적은 " + area + "입니다.");

	}

}
