//문제1. 1평은 3.3058㎡이다. 아파트 평수를 입력하면 ㎡(평방미터)로 변환하는 자바프로그램을 작성하시오.
//- 출력예 -
//아파트 평수를 입력하세요 : 30
//30평을 평방미터로 환산하면 99.174 평방미터입니다
package example;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		double m2, result;
		final double PYEONGSU = 3.3058;
		Scanner sc = new Scanner(System.in);

		System.out.print("아파트 평수를 입력하세요 : ");
		result = sc.nextDouble();
		m2 = result * 3.3058;
		System.out.println(result + "평을 평방미터로 환산하면 " + m2 + "평방미터입니다");
	}

}
