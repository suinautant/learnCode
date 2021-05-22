//문제3. 원기둥의 부피를 구하는 자바프로그램을 작성하여 보시오. 원기둥 밑면의 반지름, 높이를 입력받아서 부피를 계산하시오.
//- 출력예 -
//원기둥 밑면의 반지름을 입력하세요 : 5 
//원기둥의 높이를 입력하세요 : 50
//원기둥의 부피는 3926.99입니다.

package example;

import java.util.Scanner;

public class ex3 {

	public static void main(String[] args) {
		final double PI = 3.141592;
		double r, height, value;
		Scanner sc = new Scanner(System.in);

		System.out.print("원기둥 밑면의 반지름을 입력하세요 : ");
		r = sc.nextDouble();
		System.out.print("원기둥의 높이를 입력하세요 : ");
		height = sc.nextDouble();

		value = PI * Math.pow(r, 2) * height;
		System.out.println("원기둥의 부피는 " + value + "입니다.");
	}

}
