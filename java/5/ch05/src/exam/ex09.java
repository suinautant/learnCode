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
			// 배열의 마지막 위치는 합계 공간으로 사용
			int sum = scores[i].length - 1;

			System.out.println();
			System.out.print((i + 1) + "번 학생의 이름을 입력하세요 : ");
			student[i] = sc.next();
			System.out.print((i + 1) + "번 학생의 " + sum + "과목 성적을 차례대로 입력하세요 : ");

			for (int j = 0; j < sum; j++) {
				scores[i][j] += sc.nextInt();
				scores[i][sum] += scores[i][j];
			}

			avg[i] = (double) scores[i][sum] / sum;
			System.out.println(student[i] + " 학생의 총점은 " + scores[i][sum] + "이고, 평균은 " + avg[i] + "점입니다.");
		}

	}

}
