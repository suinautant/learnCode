//문제11. 아래 출력예와 같이 출력하는 자바프로그램을 작성하시오.
//- 출력예 -
//영문대문자를 입력하세요 : B
//입력하신 문자는 "B"이며 소문자로 변환하면 "b"입니다.

package example;

import java.io.IOException;
import java.util.Scanner;

public class ex11 {

	public static void main(String[] args) throws IOException {
		char upperLetter, lowerLetter;
//		Scanner sc = new Scanner(System.in);

		System.out.print("영문대문자를 입력하세요 : ");
//		upperLetter = sc.nextLine().trim().charAt(0);

		upperLetter = (char) System.in.read();

		lowerLetter = (char) (upperLetter + 32);
		System.out.println("입력하신 문자는 \"" + upperLetter + "\"이며 소문자로 변환하면 " + lowerLetter + "입니다.");

//		char x = 'A';
//		char y = 'a';
//		System.out.printf("%d %d", (int) x, (int) y);

	}

}
