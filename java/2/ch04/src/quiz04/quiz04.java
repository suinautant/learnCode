package quiz04;

import java.util.Scanner;

public class quiz04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("���� ������ �Է��ϼ���: ");
		int kor = sc.nextInt();
		System.out.print("���� ������ �Է��ϼ���: ");
		int eng = sc.nextInt();
		System.out.print("���� ������ �Է��ϼ���: ");
		int math = sc.nextInt();
		double score = (double) (kor + eng + math) / 3;

		if ((kor >= 0 && kor <= 100) && (eng >= 0 && eng <= 100) && (math >= 0 && math <= 100)) {
			if (score >= 60 && score <= 100) {
				System.out.printf("��� ������ %.2f�̹Ƿ� �հ��Դϴ�.", score);
			} else if (score <= 59 && score >= 0) {
				System.out.printf("��� ������ %.2f�̹Ƿ� ���հ��Դϴ�.", score);

			} else {
				System.out.println("�Է��� �� �� �Ǿ����ϴ�.");
			}

		} else {
			System.out.println("�Է��� �� �� �Ǿ����ϴ�.");
		}

	}

}
