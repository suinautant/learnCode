package sec04.quiz;

import java.util.Scanner;

public class Quiz02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.println("ù���� ��:");
		String strNum1 = sc.next();

		System.out.println("�ι��� ��:");
		String strNum2 = sc.next();

		int num1 = Integer.parseInt(strNum1);
		int num2 = Integer.parseInt(strNum2);
		int result = num1 + num2;
		System.out.println("���� ���: " + result);

	}

}
