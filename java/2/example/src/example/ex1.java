//����1. 1���� 3.3058���̴�. ����Ʈ ����� �Է��ϸ� ��(������)�� ��ȯ�ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
//- ��¿� -
//����Ʈ ����� �Է��ϼ��� : 30
//30���� �����ͷ� ȯ���ϸ� 99.174 �������Դϴ�
package example;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		double m2, result;
		final double PYEONGSU = 3.3058;
		Scanner sc = new Scanner(System.in);

		System.out.print("����Ʈ ����� �Է��ϼ��� : ");
		result = sc.nextDouble();
		m2 = result * 3.3058;
		System.out.println(result + "���� �����ͷ� ȯ���ϸ� " + m2 + "�������Դϴ�");
	}

}
