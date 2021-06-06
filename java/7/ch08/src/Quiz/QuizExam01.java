package Quiz;

import java.util.Scanner;

//import Quiz.Ex02.Calc;
//import Quiz.Ex02.Calculator;

interface Calc {
	public int add(int num1, int num2); // µ¡¼À

	public int sub(int num1, int num2); // »¬¼À

	public int mul(int num1, int num2); // °ö¼À

	public int div(int num1, int num2); // ³ª´°¼À
}

//- Ãâ·Â¿¹ -
//2°³ÀÇ Á¤¼ö°ªÀ» ÀÔ·ÂÇÏ¼¼¿ä : 8 5
//µ¡¼À : 13
//»¬¼À : 3
//°ö¼À : 40
//³ª´°¼À : 1

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
	}

}
