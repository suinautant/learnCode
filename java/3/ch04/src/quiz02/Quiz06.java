//����6. for �ݺ����� ����Ͽ� 1���� �Է��� ���ڱ����� �հ踦 ���ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//������ �Է��ϼ��� : 50
//1���� 50������ �հ�� 1275�Դϴ�.

package quiz02;

import java.util.Scanner;

public class Quiz06 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("������ �Է��ϼ��� : ");
		int inputNum = sc.nextInt();

		int sum = 0;
		for (int i = 0; i <= inputNum; i++) {
			sum += i;
		}
		System.out.println("�հ� : " + sum);
	}

}
