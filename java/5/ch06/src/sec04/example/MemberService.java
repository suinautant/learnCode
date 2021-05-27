package sec04.example;

import java.util.Scanner;

public class MemberService {

	public boolean login(String id, String password) {
		final String ID = "hong";
		final String PASSWORD = "12345";

		if (id.equals(ID) && password.equals(PASSWORD)) {
			return true;
		}

		return false;
	}

	public void logout(String id) {
		System.out.println(id + "는 로그아웃 되었습니다.");
	}

	public String inputAccount(String account) {
		Scanner sc = new Scanner(System.in);

		System.out.print(account + "를 입력하세요 : ");
		String input = sc.nextLine();

		return input;
	}
}
