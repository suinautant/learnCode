package exam;

import java.util.Scanner;

public class CircleExam {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		CircleRadius cr = new CircleRadius();

		System.out.print("���� �������� �Է��ϼ��� :");
		double r = sc.nextDouble();
		double resultRound = cr.circumstance(r);
		double resultArea = cr.area(r);

		System.out.println("���� �ѷ��� " + resultRound + "�̸� ���� ������ " + resultArea + "�Դϴ�.");

	}

}
