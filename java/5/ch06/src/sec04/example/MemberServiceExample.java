package sec04.example;

public class MemberServiceExample {

	public static void main(String[] args) {
		MemberService memberService = new MemberService();

		Account account = new Account();

		account.id = memberService.inputAccount("ID");
		account.pw = memberService.inputAccount("PW");

		boolean result = memberService.login(account.id, account.pw);
		if (result) {
			System.out.println("�α��� �Ǿ����ϴ�.");
			memberService.logout(account.id);
		} else {
			System.out.println("id �Ǵ� password�� �ùٸ��� �ʽ��ϴ�.");
		}
	}

}
