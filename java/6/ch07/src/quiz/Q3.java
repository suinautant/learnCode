//����3-1. �������� �Է¹޾Ƽ� ���� �ѷ��� ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. 
//��, �������� 3.141592�� ���ó���ϸ� ���� �ѷ��� ������ �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�.
//- ��¿� -
//�������� �Է��ϼ��� : 10
//���� �ѷ��� 62.83�̰� ������ 314.16�Դϴ�.

package quiz;

import java.util.Scanner;

class Circle {
	private static final double PI = 3.141592;

	public double round(int radius) {
		return 2 * PI * radius;
	}

	public double area(int radius) {
		return PI * Math.pow(radius, 2);
	}

}

public class Q3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Circle circle = new Circle();

		System.out.print("�������� �Է��ϼ��� : ");
		int radius = sc.nextInt();
		double round = circle.round(radius);
		double area = circle.area(radius);

		System.out.println("���� �ѷ��� " + round + "�̰�, ������ " + area + "�Դϴ�.");
	}

}
