package sec04.quiz;

import java.util.Scanner;

public class Quiz04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.println("[�ʼ� ���� �Է�]");
		System.out.print("1. �̸� : ");
		String name = sc.nextLine();
		System.out.print("2. �ֹι�ȣ �� 6�ڸ� : ");
		String rrn = sc.nextLine();
		System.out.print("3. ��ȭ��ȣ : ");
		String tel = sc.nextLine();

		System.out.println("\n[�Է��� ����]");
		System.out.println(name);
		System.out.println(rrn);
		System.out.println(tel);
	}

}
