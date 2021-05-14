/*문제9. 달의 중력은 지구의 약 17%라고 한다. 자신의 몸무게가 70kg이라고 할 때 달에서의 몸무게를 계산하는 자바프로그램을 작성하시오.
- 출력예 -
달에서의 몸무게는 11.9kg입니다.*/
package example;

public class ex9 {

	public static void main(String[] args) {
		double moonGravity = 17;
		double weight = 70;
		double moonWeight = (weight * moonGravity) / 100;
		System.out.printf("달에서의 몸무게는 %.1fkg입니다.", moonWeight);
	}

}
