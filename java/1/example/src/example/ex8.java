/*문제8. 아래의 출력예와 같이 출력하는 자바프로그램을 작성하여 보시오.
- 출력예 -
A회사원의 본봉은 250만원이고 세금은 25만원일 때 실수령액은 225만원입니다.*/
package example;

public class ex8 {

	public static void main(String[] args) {
		int salary = 250;
		int tax = (int) (salary * 0.1);
		int realIncome = salary - tax;
		System.out.printf("A회사원의 본봉은 %d만원이고 세금은 %d만원일 때 실수령액은 %d만원입니다.", salary, tax, realIncome);

	}

}
