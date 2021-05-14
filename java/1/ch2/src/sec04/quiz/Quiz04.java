package sec04.quiz;

import java.util.Scanner;

public class Quiz04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.println("[필수 정보 입력]");
		System.out.print("1. 이름 : ");
		String name = sc.nextLine();
		System.out.print("2. 주민번호 앞 6자리 : ");
		String rrn = sc.nextLine();
		System.out.print("3. 전화번호 : ");
		String tel = sc.nextLine();

		System.out.println("\n[입력한 내용]");
		System.out.println(name);
		System.out.println(rrn);
		System.out.println(tel);
	}

}
