//문제5. 아래 출력예와 같이 자바프로그램을 작성하여 보시오. 단, 합격여부는 기존 클래스를 상속하여 작성하시오. 
//합격여부는 3과목 중 한 과목이라도 40점 미만이거나 평균점수가 60점 미만이면 불합격으로 출력하며 
//그 외에는 합격으로 출력하시오.
//- 출력예 -
//데이터베이스, 디지털논리회로, 프로그래밍 3과목의 성적을 입력하세요 : 90 100 30
//=== 메뉴 ===
//(1) 총점계산 (2) 평균계산 (3) 합격여부

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

		System.out.print("데이터베이스, 디지털논리회로, 프로그래밍 3과목의 성적을 입력하세요 : ");
		int subject1 = sc.nextInt();
		int subject2 = sc.nextInt();
		int subject3 = sc.nextInt();

		while (true) {
			System.out.println("=== 메뉴 ===");
			System.out.print("(1) 총점계산 (2) 평균계산 (3) 합격여부 : ");
			int menu = sc.nextInt();

			String passResult = "";

			switch (menu) {
			case 1:
				System.out.println("총점 : " + sp2.sum(subject1, subject2, subject3));
				break;
			case 2:
				System.out.println("평균 : " + sp2.avg(subject1, subject2, subject3));
				break;
			case 3:
				boolean pass = sp2.isPass(subject1, subject2, subject3);
				if (pass) {
					passResult = "합격";
				} else {
					passResult = "불합격";
				}
				System.out.println("합격여부 : " + passResult + "입니다.");
				break;
			default:
				return;
			}
		}

//		System.out.println("=== 메뉴 ===");
//		System.out.print("(1) 총점계산 (2) 평균계산 (3) 합격여부 : ");
//		int menu = sc.nextInt();
//
//		String passResult = "";
//		if (menu == 1) {
//			System.out.println("총점 : " + sp2.sum(subject1, subject2, subject3));
//		} else if (menu == 2) {
//			System.out.println("평균 : " + sp2.avg(subject1, subject2, subject3));
//		} else {
//			boolean pass = sp2.isPass(subject1, subject2, subject3);
//			if (pass) {
//				passResult = "합격";
//			} else {
//				passResult = "불합격";
//
//			}
//
//			System.out.println("합격여부 : " + passResult + "입니다.");
//		}

	}

}
