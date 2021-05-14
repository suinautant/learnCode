package sec03.quiz;

public class test {

	public static void main(String[] args) {
//		ex5
//		char ch1 = 'a';
//		int ch2='a';
////		char ch2 = ch1 + 1; // err
////		String ch2 = ch1 + 1; // err
////		char ch2 = 'a' + 1; //  b
////		String ch2 = "a" + 1; // a1
////		char ch2 = (char) (ch1 + 1); // ok
////		System.out.println(ch2);
//		int ch3 = ch2 + 1;

////		ex6
//		int x = 5;
//		int y = 2;
//		// x와 y앞에 double 이 안 붙을 경우 2.0 출력 됨. 계산 결과 값이 int로 처리 된 듯
//		double result = (double) x / (double) y;  // 2.5
//		result =  x /  y;  // 2.0
//		System.out.println(result);

//		ex8
//		double v1 = 3.5;
//		double v2 = 2.7;
//		int result = (int)(v1 + v2);
//		System.out.println(result);

		long v1 = 2L;
		float v2 = 1.8f;
		double v3 = 2.5;
		String v4 = "3.9";
//		int result = (int)v1 + (int)v2 + (int)v3 + (int)Double.parseDouble(v4);  // 8
		int result = (int) (v1 + (int) (v2 + v3) + Double.parseDouble(v4)); // 9
//		int result = (int)(v1 + v2 + v3 + Double.parseDouble(v4));  // 10
		System.out.println(result);

//		ex10
		System.out.println("quiz10");
		System.out.println(2 + 3 + "");
		System.out.println(2 + " " + 3);
		System.out.println(" " + 2 + 3);
	}

}
