//����2-1. �������� �Է¹޾Ƽ� ���� �ѷ��� ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. ��, �������� 3.141592�� ���ó���ϸ� 
//���� �ѷ��� ������ �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�.
//- ��¿� -
//�������� �Է��ϼ��� : 10
//���� �ѷ��� 62.83�̰� ������ 314.16�Դϴ�.

package quiz;

import java.util.Scanner;

class Func {
	double pi = 3.141592;
	int radius;
	double roundResult;
	double areaResult;

	int radius() {
		Scanner sc = new Scanner(System.in);
		System.out.print("�� �������� �Է��ϼ���: ");
		int result = sc.nextInt();
		return result;
	}

	double round(double radius) {
		double result = (double) 2 * pi * radius;
		return result;
	}

	double area(double radius) {
		double result = (double) pi * Math.pow(radius, 2);
		return result;
	}
}

public class quiz02 {

	public static void main(String[] args) {
		Func func = new Func();
		func.radius = func.radius();
		func.roundResult = func.round(func.radius);
		func.areaResult = func.area(func.radius);

		System.out
				.println("������ " + func.radius + "�� �� �ѷ��� " + func.roundResult + "�̸� �� ���̴� " + func.areaResult + "�̴�.");

	}

}
