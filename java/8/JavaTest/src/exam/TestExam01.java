package exam;

import java.util.Scanner;

class Calculator {

	public int add(int num1, int num2) {
		return num1 + num2;
	}

	public int minus(int num1, int num2) {
		return num1 - num2;
	}

	public int mul(int num1, int num2) {
		return num1 * num2;
	}

	public int div(int num1, int num2) {
		return (int) (double) num1 / num2;
	}

}

class Calculator2 extends Calculator {
	public int remind(int num1, int num2) {
		return num1 % num2;
	}

}

public class TestExam01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Calculator2 calc = new Calculator2();

		System.out.print("2°³ÀÇ Á¤¼ö°ªÀ» ÀÔ·ÂÇÏ¼¼¿ä : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		int result = calc.add(num1, num2);
		System.out.println("µ¡¼À : " + result);
		result = calc.minus(num1, num2);
		System.out.println("»¬¼À : " + result);
		result = calc.mul(num1, num2);
		System.out.println("°ö¼À : " + result);
		result = calc.div(num1, num2);
		System.out.println("³ª´°¼À : " + result);
		result = calc.remind(num1, num2);
		System.out.println("³ª¸ÓÁö : " + result);

	}

}



