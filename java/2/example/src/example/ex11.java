//����11. �Ʒ� ��¿��� ���� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
//- ��¿� -
//�����빮�ڸ� �Է��ϼ��� : B
//�Է��Ͻ� ���ڴ� "B"�̸� �ҹ��ڷ� ��ȯ�ϸ� "b"�Դϴ�.

package example;

import java.io.IOException;
import java.util.Scanner;

public class ex11 {

	public static void main(String[] args) throws IOException {
		char upperLetter, lowerLetter;
//		Scanner sc = new Scanner(System.in);

		System.out.print("�����빮�ڸ� �Է��ϼ��� : ");
//		upperLetter = sc.nextLine().trim().charAt(0);

		upperLetter = (char) System.in.read();

		lowerLetter = (char) (upperLetter + 32);
		System.out.println("�Է��Ͻ� ���ڴ� \"" + upperLetter + "\"�̸� �ҹ��ڷ� ��ȯ�ϸ� " + lowerLetter + "�Դϴ�.");

//		char x = 'A';
//		char y = 'a';
//		System.out.printf("%d %d", (int) x, (int) y);

	}

}
