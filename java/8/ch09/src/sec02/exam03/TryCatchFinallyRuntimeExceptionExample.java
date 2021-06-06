package sec02.exam03;

public class TryCatchFinallyRuntimeExceptionExample {

	public static void main(String[] args) {
		String data1 = null;
		String data2 = null;
		try {
			data1 = args[0];
			data2 = args[0];

			int value1 = Integer.parseInt(data1);
			int value2 = Integer.parseInt(data1);
			int result = value1 + value2;
			System.out.println(data1 + "+" + data2 + "=" + result);
		} catch (Exception e) {
			System.out.println("예외가 발생했습니다.");
			return;

		} finally {
			System.out.println("다시 실행하세요.");

		}
	}

}
