package constant;

import java.util.Scanner;

public class Constant {

	public static void main(String[] args) {
		final double PI = 3.14;
		Scanner sc = new Scanner(System.in);

		System.out.print("�������� �Է��ϼ���: ");
		double radius = sc.nextDouble();
		double result = PI * Math.pow(radius, 2);
		System.out.println("�� ���� " + radius + "�� ���� ������ " + result + "�Դϴ�.");
	}

}
