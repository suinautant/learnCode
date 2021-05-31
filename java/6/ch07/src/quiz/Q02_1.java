//문제2-2. 문제2-1에서 평균 기능을 상속을 이용하여 자식클래스를 출력하는 자바프로그램을 작성하여 보시오.

package quiz;

import java.util.Scanner;

class Sum {
	public int sum(int kor, int math, int eng) {
		return kor + math + eng;
	}
}

class Avg extends Sum {
	public double avgF(int kor, int math, int eng) {
		return (double) (sum(kor, math, eng) / 3);

	}
}

public class Q02_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Avg avg = new Avg();

		System.out.print("국어, 수학, 영어 과목 점수를 입력하세요 : ");
		double sum = avg.avgF(sc.nextInt(), sc.nextInt(), sc.nextInt());
		System.out.println("평균 : " + sum);
	}

}