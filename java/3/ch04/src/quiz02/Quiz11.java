//문제11. 사용자로부터 영문 소문자를 무한반복 입력받아서 영문 대문자로 바꾸는 자바프로그램을 작성하여 보시오. 
//단, 사용자가 영문 소문자 'q'를 입력하면 반복문을 종료(break)하시오.

package quiz02;

import java.util.Scanner;

public class Quiz11 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.println();
			System.out.print("영어 소문자를 입력하세요 : ");
			char inStr = sc.next().charAt(0);

			if (inStr == 'q') {
				System.out.println("종료합니다.");
				break;
			} else if (('a' > inStr) || ('z' < inStr)) {
				System.out.println("오류 : 영어 소문자만 입력해야 합니다.");
			} else {
				System.out.println("영어 소문자 : " + inStr + " ===> 대문자 : " + (char) (inStr - 32));
			}

		}

	}

}
