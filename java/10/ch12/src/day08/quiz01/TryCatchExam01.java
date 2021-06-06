//문제1. 아래와 같이 2개의 정수를 입력 받아 출력하는 자바프로그램을 작성하여 보시오. 
//단, 분모에 0이 입력되면 예외처리를 하며 "분모는 0으로 입력하지 마세요!" 라고 출력함.
//- 출력예 -
//두 정수를 입력하세요 : 10 3
//나눗셈 연산식은 10 / 3 = 3입니다.

package day08.quiz01;

import java.util.Scanner;

public class TryCatchExam01 {
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("두 정수를 입력하세요 : ");
			int num1 = sc.nextInt();
			int num2 = sc.nextInt();
			int result = num1 / num2;
			System.out.println("나눗셈 연산식은 " + num1 + " / " + num2 + " = " + result + "입니다.");

		} catch (Exception e) {
			System.out.println("분모는 0으로 입력하지 마세요!!");
		}

	}

}
