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
		System.out.println(id + "�� �α׾ƿ� �Ǿ����ϴ�.");
	}

	public String inputAccount(String account) {
		Scanner sc = new Scanner(System.in);

		System.out.print(account + "�� �Է��ϼ��� : ");
		String input = sc.nextLine();

		return input;
	}
}
