package quiz;

public class Quiz07 {

	public static void main(String[] args) {
//		float var1 = 10f;
		int var1 = 10;
//		float var2 = (float)var1 / 100; // 0.1
		double var2 = (double)var1 / 100; // 0.1
//		float var2 = var1 / 100; // 0.0
		System.out.printf("%f",var2);
		if(var2 == 0.1) {
			System.out.println("var2 ���� : " + var2 + " �̹Ƿ�, 10%�Դϴ�.");
		}else {
			System.out.println("var2 ���� : " + var2 + " �̹Ƿ�, 10%�� �ƴմϴ�.");
			
		}

	}

}
