//����3-2. ����3-1���� ���Ǹ� ����ϴ� ����� ����� �̿��Ͽ� �ڽ�Ŭ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. 
//��, ���� ���Ǵ� (4/3)*��*r^3��.
//- ��¿� -
//�������� �Է��ϼ��� : 5
//���� �ѷ��� 00�̰� ������ 000�Դϴ�.
//���� �������� 5�̸� ���Ǵ� 523.333�Դϴ�.

package quiz;

import java.util.Scanner;

class Circle2 {
	private static final double PI = 3.141592;

	public double round(int radius) {
		return 2 * PI * radius;
	}

	public double area(int radius) {
		return PI * Math.pow(radius, 2);
	}

}

class Circle3 extends Circle2 {
	public double volume(int radius) {
		return area(radius) * radius * 4 / 3;
	}
}

public class Q3_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Circle3 circle = new Circle3();

		System.out.print("�������� �Է��ϼ��� : ");
		int radius = sc.nextInt();
		double round = circle.round(radius);
		double area = circle.area(radius);
		double volume = circle.volume(radius);

		System.out.println("���� �ѷ��� " + round + "�̰�, ������ " + area + "�Դϴ�.");
		System.out.println("���� �������� " + radius + "�̸� ���Ǵ� " + volume + "�Դϴ�.");
	}

}