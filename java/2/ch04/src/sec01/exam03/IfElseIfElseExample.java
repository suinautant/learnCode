package sec01.exam03;

import java.util.Scanner;

public class IfElseIfElseExample {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("점수를 입력하세요: ");
		int score = sc.nextInt();

		if (score >= 90 && score <= 100) {
			System.out.println("점수가 100-90점입니다.");
			System.out.println("등급은 A입니다.");
		} else if (score >= 80) {
			System.out.println("점수가 80~89점입니다.");
			System.out.println("등급은 B입니다.");

		} else if (score >= 70) {
			System.out.println("점수가 70~79점입니다.");
			System.out.println("등급은 C입니다.");

		} else if (score >= 60 && score >= 0) {
			System.out.println("점수가 60~69점입니다.");
			System.out.println("등급은 D입니다.");

		} else {
			System.out.println("점수가 0~59점입니다.");
			System.out.println("등급은 F입니다.");
		}
	}

}
