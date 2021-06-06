package Quiz.Ex02;

import java.util.Scanner;

interface Calc {
	public int add(int num1, int num2); // µ¡¼À

	public int sub(int num1, int num2); // »¬¼À

	public int mul(int num1, int num2); // °ö¼À

	public int div(int num1, int num2); // ³ª´°¼À
}

interface Calc2 extends Calc {
	public int remind(int num1, int num2); // ³ª´°¼À

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
		System.out.print("2°³ÀÇ Á¤¼ö°ªÀ» ÀÔ·ÂÇÏ¼¼¿ä : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();

		Calculator calc = new Calculator();
		int resultAdd = calc.add(num1, num2);
		System.out.println("µ¡¼À : " + resultAdd);
		int resultSub = calc.sub(num1, num2);
		System.out.println("»¬¼À : " + resultSub);
		int resultMul = calc.mul(num1, num2);
		System.out.println("°ö¼À : " + resultMul);
		int resultDiv = calc.div(num1, num2);
		System.out.println("³ª´°¼À : " + resultDiv);
		int resultRemind = calc.remind(num1, num2);
		System.out.println("³ª¸ÓÁö : " + resultRemind);

		System.out.println();
		int resultNewuu = calc.newuu(num1, num2);
		System.out.println("³ª¸ÓÁö : " + resultNewuu);
	}

}
