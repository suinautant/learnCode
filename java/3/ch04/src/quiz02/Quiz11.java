//����11. ����ڷκ��� ���� �ҹ��ڸ� ���ѹݺ� �Է¹޾Ƽ� ���� �빮�ڷ� �ٲٴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. 
//��, ����ڰ� ���� �ҹ��� 'q'�� �Է��ϸ� �ݺ����� ����(break)�Ͻÿ�.

package quiz02;

import java.util.Scanner;

public class Quiz11 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.println();
			System.out.print("���� �ҹ��ڸ� �Է��ϼ��� : ");
			char inStr = sc.next().charAt(0);

			if (inStr == 'q') {
				System.out.println("�����մϴ�.");
				break;
			} else if (('a' > inStr) || ('z' < inStr)) {
				System.out.println("���� : ���� �ҹ��ڸ� �Է��ؾ� �մϴ�.");
			} else {
				System.out.println("���� �ҹ��� : " + inStr + " ===> �빮�� : " + (char) (inStr - 32));
			}

		}

	}

}
