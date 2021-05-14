/*문제10. A회사원의 본봉이 150만원, 보너스 60만원, 세금이 전체 수입의 9%, 매월 입금되는 금액은 전체 수입에서 세금을 뺀 금액이다. 아래 출력예와 같이 출력되는 자바프로그램을 작성하시오.
- 출력예- 
A회사원의 실 입금액은 191.1만원입니다.*/
package example;

public class ex10 {

	public static void main(String[] args) {
		double salary = 150;
		double bonus = 60;
		double total = salary + bonus;
		double tax = 0.09; // 9%
		double realIncom = total - (total * tax);
		System.out.printf("A회사원의 실 입금액은 %.1f만원입니다.", realIncom);

	}

}
