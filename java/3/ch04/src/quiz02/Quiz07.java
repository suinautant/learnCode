//����7. for �ݺ����� ����Ͽ� �Ʒ� ��¿��� ���� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//1���� 10������ Ȧ���� ���� 25�Դϴ�.
//
//
//����8. for �ݺ����� ����Ͽ� 1���� 10���� ¦���� ���� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//1���� 10���� ¦���� ���� 3840�Դϴ�.
//
//����9. for �ݺ����� ����Ͽ� �Ʒ� ��¿��� ���� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�.
//- ��¿� -
//1���� 10������ Ȧ���� ���� 945�Դϴ�.

package quiz02;

public class Quiz07 {

	public static void main(String[] args) {
		int min = 1;
		int max = 10;
		int sumOdd = 0;
		int sumEven = 0;
		int mulOdd = 1;
		int mulEven = 1;

		for (int i = min; i <= max; i++) {
			if (i % 2 == 0) {
				sumEven += i;
				mulEven *= i;
			} else {
				sumOdd += i;
				mulOdd *= i;
			}
		}
		System.out.println(
				min + "���� " + max + "������ Ȧ�� ���� " + sumOdd + "�̸�, ¦�� ���� " + sumEven + "�̴�.");
		System.out.println(
				min + "���� " + max + "������ Ȧ�� ���� " + mulOdd + "�̸�, ¦�� ���� " + mulEven + "�̴�.");
	}

}
