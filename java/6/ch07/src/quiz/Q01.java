//문제1. 전기요금을 계산하는 자바프로그램을 작성하시오. 
//기본요금(산업용)은 370원으로 하고 kw당 요금은 52.0원, 
//세금은 전체요금의 5%로 한다. 전기요금=기본요금+(사용량*kw당 요금)+세금이다. 
//단, 전기요금을 계산하는 부분은 메소드를 사용하여 풀이하시오. (매개변수 1개 (전기사용량), 리턴값 실수값)
//- 출력예 -
//전기사용량을 입력하세요 (kw) : 500
//사용하신 전기요금은 27688.5원입니다.

package quiz;

import java.util.Scanner;

class Cal {
	public double calEle(int usage) {
		return (double) (370 + (usage * 52)) * 1.05;
	}
}

public class Q01 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Cal cal = new Cal();

		System.out.print("전기사용량을 입력하세요 (kw) : ");
		int usage = sc.nextInt();

		double result = cal.calEle(usage);
		System.out.println("사용하신 전기요금은 " + result + "원입니다.");

	}

}
