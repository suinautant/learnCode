//����2. ���� �� ���� ���� ���Ͽ� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. 
//��, ���� ��� ���ڸ� �Է��ϸ� ����ó���� �ϸ� "���� 3���� �ùٸ��� �Է��ϼ���!" ��� �����.
//- ��¿� -
//�� ���� ������ �Է��ϼ��� : 2 30 40
//���� 2, 30, 40�� ���� 2400�Դϴ�.

package day08.quiz01;

import java.util.Scanner;

public class TryCatchExam02 {
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("�� ���� ������ �Է��ϼ��� : ");
			int num1 = sc.nextInt();
			int num2 = sc.nextInt();
			int num3 = sc.nextInt();
			int result = num1 * num2 * num3;
			System.out.println("���� " + num1 + ", " + num2 + ", " + num3 + "�� ���� " + result + "�Դϴ�.");
		} catch (Exception e) {
			System.out.println("���� 3���� �ùٸ��� �Է��ϼ���!!");
		}

	}

}
