package sec04.quiz;

import java.util.Scanner;

public class QuizPlus {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("����(����:����)�� �Է��ϼ���: ");
		int monthPay = sc.nextInt();
		System.out.print("���ʽ�(����:����)�� �Է��ϼ���: ");
		int bonus = sc.nextInt();

		double tax = 0.1;
		double realIncome = monthPay - (bonus * tax);
		double salary = realIncome * 12;

		System.out.println("�Ѽ�����" + realIncome + "�����̰� ������" + salary + "�����Դϴ�.");
	}

}
