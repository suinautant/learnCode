package exam;

import java.util.Scanner;

public class ex09 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		final int STUDENT = 3;
		final int SUBJECT = 4;

		int[][] scores = new int[STUDENT][SUBJECT + 1];
		double[] avg = new double[STUDENT];
		String[] student = new String[STUDENT];

		for (int i = 0; i < scores.length; i++) {
			// �迭�� ������ ��ġ�� �հ� �������� ���
			int sum = scores[i].length - 1;

			System.out.println();
			System.out.print((i + 1) + "�� �л��� �̸��� �Է��ϼ��� : ");
			student[i] = sc.next();
			System.out.print((i + 1) + "�� �л��� " + sum + "���� ������ ���ʴ�� �Է��ϼ��� : ");

			for (int j = 0; j < sum; j++) {
				scores[i][j] += sc.nextInt();
				scores[i][sum] += scores[i][j];
			}

			avg[i] = (double) scores[i][sum] / sum;
			System.out.println(student[i] + " �л��� ������ " + scores[i][sum] + "�̰�, ����� " + avg[i] + "���Դϴ�.");
		}

	}

}
