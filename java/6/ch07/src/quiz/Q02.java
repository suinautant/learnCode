//문제2-1. 국어, 수학, 영어 3과목의 점수를 각각 입력받아서 총점을 출력하는 자바프로그램을 작성하여 보시오. 
//단, 총점은 메소드를 사용하여 풀이하시오.

package quiz;

import java.util.Scanner;

class Func {
	public int sum(int kor, int math, int eng) {
		return kor + math + eng;
	}
}

public class Q02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Func func = new Func();

		System.out.print("국어, 수학, 영어 과목 점수를 입력하세요 : ");
		int sum = func.sum(sc.nextInt(), sc.nextInt(), sc.nextInt());
		System.out.println("총점 : " + sum);
	}

}
