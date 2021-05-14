package sec03.exam05;

public class OperationsPromotionExample {

	public static void main(String[] args) {
		byte byteValue1 = 10;
		byte byteValue2 = 20;
		int iVal1 = byteValue1 + byteValue2;
		System.out.println(iVal1);

		char chVal1 = 'A';
		char chVal2 = 1;
		int iVal2 = chVal1 + chVal2;
		System.out.println("유니코드 : " + iVal2);
		System.out.println("출력문자 : " + (char) iVal2);

		int iVal3 = 10;
		int iVal4 = iVal3 / 4;
		System.out.println(iVal4);

	}

}
