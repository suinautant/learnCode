//문제7. for 반복문을 사용하여 아래 출력예와 같이 자바프로그램을 작성하여 보시오.
//- 출력예 -
//1부터 10까지의 홀수의 합은 25입니다.
//
//
//문제8. for 반복문을 사용하여 1부터 10까지 짝수의 곱을 출력하는 자바프로그램을 작성하여 보시오.
//- 출력예 -
//1부터 10까지 짝수의 곱은 3840입니다.
//
//문제9. for 반복문을 사용하여 아래 출력예와 같이 자바프로그램을 작성하여 보시오.
//- 출력예 -
//1부터 10까지의 홀수의 곱은 945입니다.

package quiz02;

public class Quiz07 {

	public static void main(String[] args) {
		int min = 1;
		int max = 10;
		int sumOdd = 0;
		int sumEven = 0;
		int mulOdd = 1;
		int mulEven = 1;

		for (int i = min; i <= max; i++) {
			if (i % 2 == 0) {
				sumEven += i;
				mulEven *= i;
			} else {
				sumOdd += i;
				mulOdd *= i;
			}
		}
		System.out.println(
				min + "에서 " + max + "까지의 홀수 합은 " + sumOdd + "이며, 짝수 합은 " + sumEven + "이다.");
		System.out.println(
				min + "에서 " + max + "까지의 홀수 곱은 " + mulOdd + "이며, 짝수 곱은 " + mulEven + "이다.");
	}

}
