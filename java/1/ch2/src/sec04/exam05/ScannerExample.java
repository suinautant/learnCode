package sec04.exam05;

import java.util.Scanner;

public class ScannerExample {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String inputData;

		System.out.print("문자열을 입력하세요 : ");
		inputData = sc.nextLine();
		System.out.println("입력한 문자열 : " + inputData);

	}

}
