//����8. 2���� ������ �Է¹޾� �ش��ϴ� ��ȣ�� �����ϸ� ��Ģ������ �ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//2���� ������ �Է��ϼ��� : 20 30
//��Ģ������ �����ϼ���. (1) ���� (2) ���� (3) ���� (4) ������ (5) ����
//1
//�Է��Ͻ� ������ ������ 50�Դϴ�.

package quiz;

import java.util.Scanner;

public class Quiz08 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("2���� ������ �Է��ϼ��� : ");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();

		System.out.println("��Ģ������ �����ϼ���. (1) ���� (2) ���� (3) ���� (4) ������ (5) ����");
		int choice = sc.nextInt();

		String calChoice = "";
		double result=0;
		switch (choice) {
		case 1:
			result = num1 + num2;
			calChoice = "����";
			break;

		case 2:
			result = num1 - num2;
			calChoice = "����";
			break;

		case 3:
			result = num1 * num2;
			calChoice = "����";
			break;

		case 4:
			result = num1 / num2;
			calChoice = "������";
			break;

		default:
			break;
		}

		if (!calChoice.equals("")) {
			System.out.println("�Է��Ͻ� ������ " + calChoice + "�� " + result + "�Դϴ�.");
		}
	}

}
