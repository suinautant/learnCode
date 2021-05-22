//문제5. 정수값을 입력했을때 홀수, 짝수를 판별하는 자바프로그램을 작성하시오.
//- 출력예 -
//정수값을 입력하세요 : 20(15)
//입력하신 숫자는 20(15)이며 짝수(홀수)입니다.

package quiz;

import java.util.Scanner;

public class Quiz05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("정수값을 입력하세요 : ");
		int input = sc.nextInt();

		String evenOdd = "";
		if (input % 2 == 0) {
			evenOdd = "짝수";
		} else {
			evenOdd = "홀수";
		}
		System.out.println("입력하신 숫자는 " + input + "이며 " + evenOdd + "입니다. ");
	}

}
