package Quiz.Ex02;

import java.util.Scanner;

interface Calc {
	public int add(int num1, int num2); // ����

	public int sub(int num1, int num2); // ����

	public int mul(int num1, int num2); // ����

	public int div(int num1, int num2); // ������
}

interface Calc2 extends Calc {
	public int remind(int num1, int num2); // ������

}

class Calculator implements Calc2 {
	@Override
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	@Override
	public int sub(int num1, int num2) {
		return num1 - num2;
	}

	@Override
	public int mul(int num1, int num2) {
		return num1 * num2;
	}

	@Override
	public int div(int num1, int num2) {
		return (int) ((double) num1 / num2);
	}

	@Override
	public int remind(int num1, int num2) {
		return num1 % num2;
	}

	public int newuu(int num1, int num2) {
		return num1 % num2;
	}

}

public class QuizExam02 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("2���� �������� �Է��ϼ��� : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();

		Calculator calc = new Calculator();
		int resultAdd = calc.add(num1, num2);
		System.out.println("���� : " + resultAdd);
		int resultSub = calc.sub(num1, num2);
		System.out.println("���� : " + resultSub);
		int resultMul = calc.mul(num1, num2);
		System.out.println("���� : " + resultMul);
		int resultDiv = calc.div(num1, num2);
		System.out.println("������ : " + resultDiv);
		int resultRemind = calc.remind(num1, num2);
		System.out.println("������ : " + resultRemind);

		System.out.println();
		int resultNewuu = calc.newuu(num1, num2);
		System.out.println("������ : " + resultNewuu);
	}

}
