// ����4-1. ����ڷκ��� ������ 2���� �Է¹޾Ƽ� ����, ����, ����, ������ ������ �Ͽ� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. 
//��, �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�.
//- ��¿� -
//2���� ���� �Է��ϼ��� : 5 2
//���� : 7
//���� : 3
//���� : 10
//������ : 2
package quiz;

import java.util.Scanner;

class exam04 {
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

public class Q4 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		exam04 ex = new exam04();
		System.out.print("2���� ���� ���� �Է��ϼ��� : ");
		int x = sc.nextInt();
		int y = sc.nextInt();

		System.out.println("���� : " + ex.sum(x, y));
		System.out.println("���� : " + ex.sub(x, y));
		System.out.println("���� : " + ex.mul(x, y));
		System.out.println("������ : " + ex.div(x, y));
	}
}