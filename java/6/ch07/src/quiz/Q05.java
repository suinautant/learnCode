//����5. �Ʒ� ��¿��� ���� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. ��, �հݿ��δ� ���� Ŭ������ ����Ͽ� �ۼ��Ͻÿ�. 
//�հݿ��δ� 3���� �� �� �����̶� 40�� �̸��̰ų� ��������� 60�� �̸��̸� ���հ����� ����ϸ� 
//�� �ܿ��� �հ����� ����Ͻÿ�.
//- ��¿� -
//�����ͺ��̽�, �����г�ȸ��, ���α׷��� 3������ ������ �Է��ϼ��� : 90 100 30
//=== �޴� ===
//(1) ������� (2) ��հ�� (3) �հݿ���

package quiz;

import java.util.Scanner;

class SubjectPass {
	int sum(int x, int y, int z) {
		return x + y + z;
	}

	double avg(int x, int y, int z) {
		return (double) (x + y + z) / 3;
	}
}

class SubjectPass2 extends SubjectPass {
	boolean isPass(int x, int y, int z) {
		if ((x >= 40 && y >= 40 && z >= 40) && (avg(x, y, z) >= 60)) {
			return true;
		}
		return false;
	}
}

public class Q05 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		SubjectPass2 sp2 = new SubjectPass2();

		System.out.print("�����ͺ��̽�, �����г�ȸ��, ���α׷��� 3������ ������ �Է��ϼ��� : ");
		int subject1 = sc.nextInt();
		int subject2 = sc.nextInt();
		int subject3 = sc.nextInt();

		while (true) {
			System.out.println("=== �޴� ===");
			System.out.print("(1) ������� (2) ��հ�� (3) �հݿ��� : ");
			int menu = sc.nextInt();

			String passResult = "";

			switch (menu) {
			case 1:
				System.out.println("���� : " + sp2.sum(subject1, subject2, subject3));
				break;
			case 2:
				System.out.println("��� : " + sp2.avg(subject1, subject2, subject3));
				break;
			case 3:
				boolean pass = sp2.isPass(subject1, subject2, subject3);
				if (pass) {
					passResult = "�հ�";
				} else {
					passResult = "���հ�";
				}
				System.out.println("�հݿ��� : " + passResult + "�Դϴ�.");
				break;
			default:
				return;
			}
		}

//		System.out.println("=== �޴� ===");
//		System.out.print("(1) ������� (2) ��հ�� (3) �հݿ��� : ");
//		int menu = sc.nextInt();
//
//		String passResult = "";
//		if (menu == 1) {
//			System.out.println("���� : " + sp2.sum(subject1, subject2, subject3));
//		} else if (menu == 2) {
//			System.out.println("��� : " + sp2.avg(subject1, subject2, subject3));
//		} else {
//			boolean pass = sp2.isPass(subject1, subject2, subject3);
//			if (pass) {
//				passResult = "�հ�";
//			} else {
//				passResult = "���հ�";
//
//			}
//
//			System.out.println("�հݿ��� : " + passResult + "�Դϴ�.");
//		}

	}

}
