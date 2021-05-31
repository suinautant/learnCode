//문제4-2. 문제4-1에서 나머지를 출력하는 기능을 상속을 이용하여 자식클래스를 출력하는 자바프로그램을 작성하여 보시오.
//2개의 값을 입력하세요 : 5 2
//덧셈 : 7
//뺄셈 : 3
//곱셈 : 10
//나눗셈 : 2
//나머지 : 1
package quiz;

import java.util.Scanner;

class ex04 {
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

class ex04_2 extends ex04 {
	int rest(int x, int y) {
		return x % y;
	}
}

public class Q4_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		ex04_2 ex = new ex04_2();
		System.out.print("2개의 정수 값을 입력하세요 : ");
		int x = sc.nextInt();
		int y = sc.nextInt();

		System.out.println("덧셈 : " + ex.sum(x, y));
		System.out.println("뺄셈 : " + ex.sub(x, y));
		System.out.println("곱셈 : " + ex.mul(x, y));
		System.out.println("나눗셈 : " + ex.div(x, y));
		System.out.println("나머지 : " + ex.rest(x, y));
	}
}
