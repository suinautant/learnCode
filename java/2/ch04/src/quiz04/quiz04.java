package quiz04;

import java.util.Scanner;

public class quiz04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("국어 점수를 입력하세요: ");
		int kor = sc.nextInt();
		System.out.print("영어 점수를 입력하세요: ");
		int eng = sc.nextInt();
		System.out.print("수학 점수를 입력하세요: ");
		int math = sc.nextInt();
		double score = (double) (kor + eng + math) / 3;

		if ((kor >= 0 && kor <= 100) && (eng >= 0 && eng <= 100) && (math >= 0 && math <= 100)) {
			if (score >= 60 && score <= 100) {
				System.out.printf("평균 점수가 %.2f이므로 합격입니다.", score);
			} else if (score <= 59 && score >= 0) {
				System.out.printf("평균 점수가 %.2f이므로 불합격입니다.", score);

			} else {
				System.out.println("입력이 잘 못 되었습니다.");
			}

		} else {
			System.out.println("입력이 잘 못 되었습니다.");
		}

	}

}
