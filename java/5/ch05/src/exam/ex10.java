//����10. �л� 3���� 10�� ������ ���������κ��� ä���� �� �� ����� ������ ���� ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. ��, 2���� �迭�� �̿��Ͽ� Ǯ���ϸ� ������ ������ int answer[]={1,3,2,3,4,2,3,1,3,2}�� ���� 1���� �迭�� ������. 
//
//- ��¿� -
//1�� �л��� ��� �Է� : 1 3 3 3 1 2 3 1 3 2
//2�� �л��� ��� �Է� : 4 3 3 3 2 2 3 1 3 2
//3�� �л��� ��� �Է� : 1 3 1 3 1 2 3 4 3 4
//
//=== ���� ä�� ��� ===
//��  �� 1�� 2�� 3�� 4�� 5�� 6�� 7�� 8�� 9�� 10�� ����
//�л�1  O   O    X    O   X   O   O    O    O    O   80��
//�л�2  X   O    X    O   X   O   O    O    O    O    70��
//�л�3  O   O    X    O   X   O   O    X    O    X    60��

package exam;

import java.util.Scanner;

public class ex10 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		final int STUDENT = 2;
		final int ANSWER = 10;

		int[][] scores = new int[STUDENT][ANSWER];
		String[] student = new String[STUDENT];
		int[] solution = { 1, 2, 3, 4, 1, 2, 3, 4, 1, 2 };
		String[][] solutionArr = new String[STUDENT][ANSWER];
		int[] sum = new int[STUDENT];

		for (int i = 0; i < scores.length; i++) {

			System.out.println();
			System.out.print((i + 1) + "�� �л��� �̸��� �Է��ϼ��� : ");
			student[i] = sc.nextLine();
			System.out.print(student[i] + " �л��� ��� �Է� : ");

			for (int j = 0; j < scores[i].length; j++) {
				scores[i][j] += sc.nextInt();
				if (scores[i][j] == solution[j]) {
					solutionArr[i][j] = "O";
					sum[i] += 10;
				} else {
					solutionArr[i][j] = "X";
				}
			}
			System.out.println();

		}

		System.out.println("=== ���� ä�� ��� ===");
		System.out.println("��   �� 1�� 2�� 3�� 4�� 5�� 6�� 7�� 8�� 9�� 10�� ����");
		System.out.print("������  ");
		for (int i = 0; i < solution.length; i++) {
				System.out.print(solution[i] + "  ");
			
		}
		System.out.println();

		for (int i = 0; i < solutionArr.length; i++) {
			System.out.print(student[i] + "   ");

			for (int j = 0; j < solutionArr[i].length; j++) {
				System.out.print(solutionArr[i][j] + "  ");
			}
			System.out.print(sum[i] + "��");
			System.out.println();
		}

	}

}
