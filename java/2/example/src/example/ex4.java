//문제4. K대학의 졸업자 중 취업률을 구하는 자바프로그램을 작성하여 보시오.
//- 출력예 -
//졸업자수를 입력하세요 : 245
//취업자수를 입력하세요 : 160
//K대학 졸업생의 취업률은 65.31%입니다.

package example;

import java.util.Scanner;

public class ex4 {

	public static void main(String[] args) {
		double graduate, employed, result;
		Scanner sc = new Scanner(System.in);

		System.out.print("졸업자수를 입력하세요 : ");
		graduate = sc.nextDouble();
		System.out.print("취업자수를 입력하세요 : ");
		employed = sc.nextDouble();
		result = employed / graduate * 100;
		System.out.printf("K대학 졸업생의 취업률은 %.2f%%입니다.", result);
//		System.out.println("K대학 졸업생의 취업률은 " + result + "%%입니다.");
	}

}
