package sec01.quiz04;

public class Sec01Quiz04 {
	public static void main(String[] args) {
		int v1 = 0;
		if (true) {
			int v2 = 0;
			int v3 = 0;
			if (true) {
				v1 = 1;
				v2 = 1;
				v3 = 1;
			}
			v1 = v2 + v3;
		}
		System.out.println(v1);
	}

}
