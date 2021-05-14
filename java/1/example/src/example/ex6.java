/*문제6. 아래의 출력예와 같이 출력하는 자바프로그램을 작성하여 보시오.
- 출력예 -
두 개의 정수 10과 20의 합은 30, 차는 -10, 곱은 200입니다.*/
package example;

public class ex6 {

	public static void main(String[] args) {
		int x = 10;
		int y = 20;
		int hab = x + y;
		int sub = x - y;
		int mul = x * y;
		System.out.printf("두 개의 정수 %d과 %d의 합은 %d, 차는 %d, 곱은 %d입니다.", x, y, hab, sub, mul);

	}

}
