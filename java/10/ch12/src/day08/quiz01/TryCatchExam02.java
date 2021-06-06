//문제2. 정수 세 개의 곱을 구하여 출력하는 자바프로그램을 작성하여 보시오. 
//단, 숫자 대신 문자를 입력하면 예외처리를 하며 "정수 3개를 올바르게 입력하세요!" 라고 출력함.
//- 출력예 -
//세 개의 정수를 입력하세요 : 2 30 40
//정수 2, 30, 40의 곱은 2400입니다.

package day08.quiz01;

import java.util.Scanner;

public class TryCatchExam02 {
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("세 개의 정수를 입력하세요 : ");
			int num1 = sc.nextInt();
			int num2 = sc.nextInt();
			int num3 = sc.nextInt();
			int result = num1 * num2 * num3;
			System.out.println("정수 " + num1 + ", " + num2 + ", " + num3 + "의 곱은 " + result + "입니다.");
		} catch (Exception e) {
			System.out.println("정수 3개를 올바르게 입력하세요!!");
		}

	}

}
