//����3-1. ����ڷκ��� ������ 2���� �Է¹޾Ƽ� ����, ����, ����, ������ �������Ͽ� 
//����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. ��, �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�.
//- ��¿� -
//2���� ���� �Է��ϼ��� : 5 2
//���� : 7
//���� : 3
//���� : 10
//������ : 2

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

		System.out.print("���� �� �� ���� �Է��ϼ��� : ");
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
