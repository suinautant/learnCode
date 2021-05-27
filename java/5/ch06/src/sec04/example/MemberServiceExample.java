package sec04.example;

public class MemberServiceExample {

	public static void main(String[] args) {
		MemberService memberService = new MemberService();

		Account account = new Account();

		account.id = memberService.inputAccount("ID");
		account.pw = memberService.inputAccount("PW");

		boolean result = memberService.login(account.id, account.pw);
		if (result) {
			System.out.println("로그인 되었습니다.");
			memberService.logout(account.id);
		} else {
			System.out.println("id 또는 password가 올바르지 않습니다.");
		}
	}

}
