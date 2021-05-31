// 문제4-1. 사용자로부터 정수값 2개를 입력받아서 덧셈, 뺄셈, 곱셈, 나눗셈 연산을 하여 출력하는 자바프로그램을 작성하시오. 
//단, 메소드를 사용하여 풀이하시오.
//- 출력예 -
//2개의 값을 입력하세요 : 5 2
//덧셈 : 7
//뺄셈 : 3
//곱셈 : 10
//나눗셈 : 2
package quiz;

import java.util.Scanner;

class exam04 {
	int sum(int x, int y) {
		return x + y;
	}

	int sub(int x, int y) {
		return x - y;
	}

	int mul(int x, int y) {
		return x * y;
	}

	int div(int x, int y) {
		return x / y;
	}
}

public class Q4 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		exam04 ex = new exam04();
		System.out.print("2개의 정수 값을 입력하세요 : ");
		int x = sc.nextInt();
		int y = sc.nextInt();

		System.out.println("덧셈 : " + ex.sum(x, y));
		System.out.println("뺄셈 : " + ex.sub(x, y));
		System.out.println("곱셈 : " + ex.mul(x, y));
		System.out.println("나눗셈 : " + ex.div(x, y));
	}
}