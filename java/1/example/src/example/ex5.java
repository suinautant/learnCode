/*����5. ����ڷκ��� �� ���� ������ ���� x, y, z�� ���� �Ŀ� xy+z�� ����Ͽ� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
- ��¿� -
�� ���� ������ ���� 3, 4, 5 �̸� xy+z�� ���� 17�Դϴ�.*/
package example;

import java.util.Scanner;

public class ex5 {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {
			System.out.println("x �Է� : ");
			int x = sc.nextInt();
			System.out.println("y �Է� : ");
			int y = sc.nextInt();
			System.out.println("z �Է� : ");
			int z = sc.nextInt();
			int result = (x * y) + z;

			System.out.println("xy+z : " + result);
		}
	}

}
