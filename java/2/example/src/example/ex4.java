//����4. K������ ������ �� ������� ���ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//�����ڼ��� �Է��ϼ��� : 245
//����ڼ��� �Է��ϼ��� : 160
//K���� �������� ������� 65.31%�Դϴ�.

package example;

import java.util.Scanner;

public class ex4 {

	public static void main(String[] args) {
		double graduate, employed, result;
		Scanner sc = new Scanner(System.in);

		System.out.print("�����ڼ��� �Է��ϼ��� : ");
		graduate = sc.nextDouble();
		System.out.print("����ڼ��� �Է��ϼ��� : ");
		employed = sc.nextDouble();
		result = employed / graduate * 100;
		System.out.printf("K���� �������� ������� %.2f%%�Դϴ�.", result);
//		System.out.println("K���� �������� ������� " + result + "%%�Դϴ�.");
	}

}
