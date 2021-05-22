//문제8. 2개의 정수를 입력받아 해당하는 번호를 선택하면 사칙연산을 하는 자바프로그램을 작성하여 보시오.
//- 출력예 -
//2개의 정수를 입력하세요 : 20 30
//사칙연산을 선택하세요. (1) 덧셈 (2) 뺄셈 (3) 곱셈 (4) 나눗셈 (5) 종료
//1
//입력하신 정수의 덧셈은 50입니다.

package quiz;

import java.util.Scanner;

public class Quiz08 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("2개의 정수를 입력하세요 : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();

		System.out.println("사칙연산을 선택하세요. (1) 덧셈 (2) 뺄셈 (3) 곱셈 (4) 나눗셈 (5) 종료");
		int choice = sc.nextInt();

		String calChoice = "";
		double result=0;
		switch (choice) {
		case 1:
			result = num1 + num2;
			calChoice = "덧셈";
			break;

		case 2:
			result = num1 - num2;
			calChoice = "뺄셈";
			break;

		case 3:
			result = num1 * num2;
			calChoice = "곱셈";
			break;

		case 4:
			result = num1 / num2;
			calChoice = "나눗셈";
			break;

		default:
			break;
		}

		if (!calChoice.equals("")) {
			System.out.println("입력하신 정수의 " + calChoice + "은 " + result + "입니다.");
		}
	}

}
