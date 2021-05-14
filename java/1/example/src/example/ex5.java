/*문제5. 사용자로부터 세 개의 정수를 변수 x, y, z에 받은 후에 xy+z를 계산하여 출력하는 자바프로그램을 작성하여 보시오.
- 출력예 -
세 개의 정수는 각각 3, 4, 5 이며 xy+z의 값은 17입니다.*/
package example;

import java.util.Scanner;

public class ex5 {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {
			System.out.println("x 입력 : ");
			int x = sc.nextInt();
			System.out.println("y 입력 : ");
			int y = sc.nextInt();
			System.out.println("z 입력 : ");
			int z = sc.nextInt();
			int result = (x * y) + z;

			System.out.println("xy+z : " + result);
		}
	}

}
