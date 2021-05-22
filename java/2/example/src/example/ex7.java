//문제7. 사용자로부터 x의 값을 실수로 입력받아서 아래와 같은 다항식의 값을 계산하여 출력하는 자바프로그램을 작성하시오. 단, 다항식은 3x^3-7x^2+9 임. 
//- 출력예 -
//x의 값을 입력하세요 : 3.9
//다항식의 값은 80.487입니다.

package example;

import java.util.Scanner;

public class ex7 {

	public static void main(String[] args) {
		double x, result;
		Scanner sc = new Scanner(System.in);
		System.out.print("x의 값을 입력하세요 : ");
		x = sc.nextDouble();
		result = 3 * Math.pow(x, 3) - 7 * Math.pow(x, 2) + 9;
		System.out.println("다항식의 값은 " + result + "입니다.");

	}

}
