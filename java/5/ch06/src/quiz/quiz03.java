//문제3-1. 사용자로부터 정수값 2개를 입력받아서 덧셈, 뺄셈, 곱셈, 나눗셈 연산을하여 
//출력하는 자바프로그램을 작성하시오. 단, 메소드를 사용하여 풀이하시오.
//- 출력예 -
//2개의 값을 입력하세요 : 5 2
//덧셈 : 7
//뺄셈 : 3
//곱셈 : 10
//나눗셈 : 2

package quiz;

import java.util.Scanner;

class Calculator {

	int plus(int num1, int num2) {
		int result = num1 + num2;
		return result;
	}

	int minus(int num1, int num2) {
		int result = num1 - num2;
		return result;
	}

	int mul(int num1, int num2) {
		int result = num1 * num2;
		return result;
	}

	int sub(int num1, int num2) {
		double result = (double) num1 / num2;
		return (int) result;
	}
}

public class quiz03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Calculator calc = new Calculator();

		System.out.print("정수 값 두 개를 입력하세요 : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
//		calc.calculator(sc.nextInt(), sc.nextInt());

//		int num1 = sc.nextInt();
//		int num2 = sc.nextInt();

		System.out.println(num1 + " + " + num2 + " = " + calc.plus(num1, num2));
		System.out.println(num1 + " - " + num2 + " = " + calc.minus(num1, num2));
		System.out.println(num1 + " * " + num2 + " = " + calc.mul(num1, num2));
		System.out.println(num1 + " / " + num2 + " = " + calc.sub(num1, num2));

	}

}
