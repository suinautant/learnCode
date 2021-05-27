//문제2-1. 반지름을 입력받아서 원의 둘레와 면적을 계산하는 자바프로그램을 작성하시오. 단, 원주율은 3.141592로 상수처리하며 
//원의 둘레와 면적은 메소드를 사용하여 풀이하시오.
//- 출력예 -
//반지름을 입력하세요 : 10
//원의 둘레는 62.83이고 면적은 314.16입니다.

package quiz;

import java.util.Scanner;

class Func {
	double pi = 3.141592;
	int radius;
	double roundResult;
	double areaResult;

	int radius() {
		Scanner sc = new Scanner(System.in);
		System.out.print("반 지름값을 입력하세요: ");
		int result = sc.nextInt();
		return result;
	}

	double round(double radius) {
		double result = (double) 2 * pi * radius;
		return result;
	}

	double area(double radius) {
		double result = (double) pi * Math.pow(radius, 2);
		return result;
	}
}

public class quiz02 {

	public static void main(String[] args) {
		Func func = new Func();
		func.radius = func.radius();
		func.roundResult = func.round(func.radius);
		func.areaResult = func.area(func.radius);

		System.out
				.println("반지름 " + func.radius + "의 원 둘레는 " + func.roundResult + "이며 원 넓이는 " + func.areaResult + "이다.");

	}

}
