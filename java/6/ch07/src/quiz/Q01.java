//����1. �������� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�. 
//�⺻���(�����)�� 370������ �ϰ� kw�� ����� 52.0��, 
//������ ��ü����� 5%�� �Ѵ�. ������=�⺻���+(��뷮*kw�� ���)+�����̴�. 
//��, �������� ����ϴ� �κ��� �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�. (�Ű����� 1�� (�����뷮), ���ϰ� �Ǽ���)
//- ��¿� -
//�����뷮�� �Է��ϼ��� (kw) : 500
//����Ͻ� �������� 27688.5���Դϴ�.

package quiz;

import java.util.Scanner;

class Cal {
	public double calEle(int usage) {
		return (double) (370 + (usage * 52)) * 1.05;
	}
}

public class Q01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Cal cal = new Cal();

		System.out.print("�����뷮�� �Է��ϼ��� (kw) : ");
		int usage = sc.nextInt();

		double result = cal.calEle(usage);
		System.out.println("����Ͻ� �������� " + result + "���Դϴ�.");

	}

}
