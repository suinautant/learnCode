package quiz;

public class Quiz04 {

	public static void main(String[] args) {
		System.out.println("� ������ ���ϼ���?");
		char grade = 'C';

		switch (grade) {
		case 'A':
			System.out.println("VVIP ������ ������ �� �ֽ��ϴ�.");

		case 'B':
			System.out.println("VIP ������ ������ �� �ֽ��ϴ�.");
			break;

		case 'C':
			System.out.println("��� ȸ�� ������ ������ �� �ֽ��ϴ�.");

		case 'D':
			System.out.println("�Ϲ� ȸ�� ������ ������ �� �ֽ��ϴ�.");
			break;

		default:
			System.out.println("������ �����ϴ�.");
		}

	}

}
