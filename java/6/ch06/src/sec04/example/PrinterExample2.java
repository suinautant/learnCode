package sec04.example;

class Printer {
	static void println(int value) {
		System.out.println(value);
	}

	static void println(Boolean value) {
		System.out.println(value);
	}

	static void println(double value) {
		System.out.println(value);
	}

	static void println(String value) {
		System.out.println(value);
	}
}

public class PrinterExample2 {

	public static void main(String[] args) {
//		Printer printer = new Printer();
		Printer.println(10);
		Printer.println(true);
		Printer.println(5.7);
		Printer.println("ȫ�浿");

	}

}
