//����4-2. ����4-1���� �������� ����ϴ� ����� ����� �̿��Ͽ� �ڽ�Ŭ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//2���� ���� �Է��ϼ��� : 5 2
//���� : 7
//���� : 3
//���� : 10
//������ : 2
//������ : 1
package quiz;

import java.util.Scanner;

class ex04 {
	int sum(int x, int y) {
		return x + y;
	}

	int sub(int x, int y) {
		return x - y;
	}

	int mul(int x, int y) {
		return x * y;
	}

	int div(int x, int y) {
		return x / y;
	}
}

class ex04_2 extends ex04 {
	int rest(int x, int y) {
		return x % y;
	}
}

public class Q4_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		ex04_2 ex = new ex04_2();
		System.out.print("2���� ���� ���� �Է��ϼ��� : ");
		int x = sc.nextInt();
		int y = sc.nextInt();

		System.out.println("���� : " + ex.sum(x, y));
		System.out.println("���� : " + ex.sub(x, y));
		System.out.println("���� : " + ex.mul(x, y));
		System.out.println("������ : " + ex.div(x, y));
		System.out.println("������ : " + ex.rest(x, y));
	}
}
