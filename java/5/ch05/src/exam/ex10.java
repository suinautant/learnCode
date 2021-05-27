//문제10. 학생 3명의 10개 문항의 시험답안지로부터 채점을 한 후 결과를 다음과 같이 출력하는 자바프로그램을 작성하여 보시오. 단, 2차원 배열을 이용하여 풀이하며 시험의 정답은 int answer[]={1,3,2,3,4,2,3,1,3,2}과 같이 1차원 배열에 저장함. 
//
//- 출력예 -
//1번 학생의 답안 입력 : 1 3 3 3 1 2 3 1 3 2
//2번 학생의 답안 입력 : 4 3 3 3 2 2 3 1 3 2
//3번 학생의 답안 입력 : 1 3 1 3 1 2 3 4 3 4
//
//=== 시험 채점 결과 ===
//문  항 1번 2번 3번 4번 5번 6번 7번 8번 9번 10번 점수
//학생1  O   O    X    O   X   O   O    O    O    O   80점
//학생2  X   O    X    O   X   O   O    O    O    O    70점
//학생3  O   O    X    O   X   O   O    X    O    X    60점

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
			System.out.print((i + 1) + "번 학생의 이름을 입력하세요 : ");
			student[i] = sc.nextLine();
			System.out.print(student[i] + " 학생의 답안 입력 : ");

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

		System.out.println("=== 시험 채점 결과 ===");
		System.out.println("문   항 1번 2번 3번 4번 5번 6번 7번 8번 9번 10번 점수");
		System.out.print("모범답안  ");
		for (int i = 0; i < solution.length; i++) {
				System.out.print(solution[i] + "  ");
			
		}
		System.out.println();

		for (int i = 0; i < solutionArr.length; i++) {
			System.out.print(student[i] + "   ");

			for (int j = 0; j < solutionArr[i].length; j++) {
				System.out.print(solutionArr[i][j] + "  ");
			}
			System.out.print(sum[i] + "점");
			System.out.println();
		}

	}

}
