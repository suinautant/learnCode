//����2-1. ����, ����, ���� 3������ ������ ���� �Է¹޾Ƽ� ������ ����ϴ� �ڹ����α׷��� �ۼ��Ͽ� ���ÿ�. 
//��, ������ �޼ҵ带 ����Ͽ� Ǯ���Ͻÿ�.

package quiz;

import java.util.Scanner;

class Func {
	public int sum(int kor, int math, int eng) {
		return kor + math + eng;
	}
}

public class Q02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Func func = new Func();

		System.out.print("����, ����, ���� ���� ������ �Է��ϼ��� : ");
		int sum = func.sum(sc.nextInt(), sc.nextInt(), sc.nextInt());
		System.out.println("���� : " + sum);
	}

}
