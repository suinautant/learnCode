//����7. ����ڷκ��� x�� ���� �Ǽ��� �Է¹޾Ƽ� �Ʒ��� ���� ���׽��� ���� ����Ͽ� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. ��, ���׽��� 3x^3-7x^2+9 ��. 
//- ��¿� -
//x�� ���� �Է��ϼ��� : 3.9
//���׽��� ���� 80.487�Դϴ�.

package example;

import java.util.Scanner;

public class ex7 {

	public static void main(String[] args) {
		double x, result;
		Scanner sc = new Scanner(System.in);
		System.out.print("x�� ���� �Է��ϼ��� : ");
		x = sc.nextDouble();
		result = 3 * Math.pow(x, 3) - 7 * Math.pow(x, 2) + 9;
		System.out.println("���׽��� ���� " + result + "�Դϴ�.");

	}

}
