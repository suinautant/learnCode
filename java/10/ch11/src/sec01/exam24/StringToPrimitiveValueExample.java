package sec01.exam24;

public class StringToPrimitiveValueExample {
	public static void main(String[] args) {
		int value1 = Integer.parseInt("10");
		double value2 = Double.parseDouble("3.14");
		boolean value3 = Boolean.parseBoolean("true");

		System.out.println("Value1: " + value1);
		System.out.println("Value2: " + value2);
		System.out.println("Value3: " + value3);
	}

}
