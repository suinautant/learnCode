//����9. ����ڷκ��� �Ǽ����� �Է¹޾Ƽ� ����, ����, ����, ������ ������ �Ͽ� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
//- ��¿� -
//2���� ���� �Է��ϼ��� : 1.23 4.56
//���� : 5.79
//���� : -3.33
//���� : 5.61
//������ : 0.27

package example;

import java.util.Scanner;

public class ex9 {

	public static void main(String[] args) {
		double x, y, plus, minus, mul, sub;
		Scanner sc = new Scanner(System.in);

		System.out.print("2���� ���� �Է��ϼ��� : ");
		x = sc.nextDouble();
		y = sc.nextDouble();

		plus = x + y;
		minus = x - y;
		mul = x * y;
		sub = x / y;

//		System.out.printf("���� : %.2f\n", plus);
//		System.out.printf("���� : %.2f\n", minus);
//		System.out.printf("���� : %.2f\n", mul);
//		System.out.printf("������ : %.2f\n", sub);

		System.out.printf("���� : %.2f\n���� : %.2f\n���� : %.2f\n������ : %.2f\n", plus, minus, mul, sub);
	}

}
