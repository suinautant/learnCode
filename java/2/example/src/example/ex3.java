//����3. ������� ���Ǹ� ���ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. ����� �ظ��� ������, ���̸� �Է¹޾Ƽ� ���Ǹ� ����Ͻÿ�.
//- ��¿� -
//����� �ظ��� �������� �Է��ϼ��� : 5 
//������� ���̸� �Է��ϼ��� : 50
//������� ���Ǵ� 3926.99�Դϴ�.

package example;

import java.util.Scanner;

public class ex3 {

	public static void main(String[] args) {
		final double PI = 3.141592;
		double r, height, value;
		Scanner sc = new Scanner(System.in);

		System.out.print("����� �ظ��� �������� �Է��ϼ��� : ");
		r = sc.nextDouble();
		System.out.print("������� ���̸� �Է��ϼ��� : ");
		height = sc.nextDouble();

		value = PI * Math.pow(r, 2) * height;
		System.out.println("������� ���Ǵ� " + value + "�Դϴ�.");
	}

}
