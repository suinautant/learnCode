//����2. �������� �Է¹޾Ƽ� ���� �ѷ��� ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. ��, �������� 3.141592�̸� ���ó���Ͻÿ�.
//- ��¿� -
//���� �������� �Է��ϼ��� : 10
//������ 10�� ���� �ѷ��� 62.83�̰� ������ 314.16�Դϴ�.

package example;

import java.util.Scanner;

public class ex2 {

	public static void main(String[] args) {
		final double PI = 3.141592;
		double r, circum, area;
		Scanner sc = new Scanner(System.in);

		System.out.print("���� �������� �Է��ϼ��� : ");
		r = sc.nextDouble();
		circum = 2 * PI * r;
		area = PI * Math.pow(r, 2);

		System.out.println("������ " + r + "�� ���� �ѷ��� " + circum + "�̰� ������ " + area + "�Դϴ�.");

	}

}
