package Quiz;

import java.util.Scanner;

//import Quiz.Ex02.Calc;
//import Quiz.Ex02.Calculator;

interface Calc {
	public int add(int num1, int num2); // ����

	public int sub(int num1, int num2); // ����

	public int mul(int num1, int num2); // ����

	public int div(int num1, int num2); // ������
}

//- ��¿� -
//2���� �������� �Է��ϼ��� : 8 5
//���� : 13
//���� : 3
//���� : 40
//������ : 1

class Calculator implements Calc {
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	public int sub(int num1, int num2) {
		return num1 - num2;
	}

	public int mul(int num1, int num2) {
		return num1 * num2;
	}

	public int div(int num1, int num2) {
		return (int) ((double) num1 / num2);
	}
}

public class QuizExam01 {
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
	}

}
