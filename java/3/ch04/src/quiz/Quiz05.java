//����5. �������� �Է������� Ȧ��, ¦���� �Ǻ��ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
//- ��¿� -
//�������� �Է��ϼ��� : 20(15)
//�Է��Ͻ� ���ڴ� 20(15)�̸� ¦��(Ȧ��)�Դϴ�.

package quiz;

import java.util.Scanner;

public class Quiz05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("�������� �Է��ϼ��� : ");
		int input = sc.nextInt();

		String evenOdd = "";
		if (input % 2 == 0) {
			evenOdd = "¦��";
		} else {
			evenOdd = "Ȧ��";
		}
		System.out.println("�Է��Ͻ� ���ڴ� " + input + "�̸� " + evenOdd + "�Դϴ�. ");
	}

}
