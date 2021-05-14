/*문제7. 아래의 출력예와 같이 출력하는 자바프로그램을 작성하여 보시오.
- 출력예 -
국어 90점, 영어 80점, 수학 70점이며 총점은 240점입니다.*/
package example;

public class ex7 {

	public static void main(String[] args) {
		int kor = 90;
		int eng = 80;
		int math = 70;
		int total = 240;

		System.out.printf("국어 %d점, 영어 %d점, 수학 %d점이며 총점은 %d점입니다.", kor, eng, math, total);
	}

}
