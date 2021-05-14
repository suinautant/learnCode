package sec04.quiz;

import java.util.Scanner;

public class QuizPlus {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("본봉(단위:만원)을 입력하세요: ");
		int monthPay = sc.nextInt();
		System.out.print("보너스(단위:만원)을 입력하세요: ");
		int bonus = sc.nextInt();

		double tax = 0.1;
		double realIncome = monthPay - (bonus * tax);
		double salary = realIncome * 12;

		System.out.println("총수입은" + realIncome + "만원이고 연봉은" + salary + "만원입니다.");
	}

}
