//����1. �Ʒ��� ���� 2���� ������ �Է� �޾� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. 
//��, �и� 0�� �ԷµǸ� ����ó���� �ϸ� "�и�� 0���� �Է����� ������!" ��� �����.
//- ��¿� -
//�� ������ �Է��ϼ��� : 10 3
//������ ������� 10 / 3 = 3�Դϴ�.

package day08.quiz01;

import java.util.Scanner;

public class TryCatchExam01 {
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("�� ������ �Է��ϼ��� : ");
			int num1 = sc.nextInt();
			int num2 = sc.nextInt();
			int result = num1 / num2;
			System.out.println("������ ������� " + num1 + " / " + num2 + " = " + result + "�Դϴ�.");

		} catch (Exception e) {
			System.out.println("�и�� 0���� �Է����� ������!!");
		}

	}

}
