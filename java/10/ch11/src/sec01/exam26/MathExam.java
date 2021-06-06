package sec01.exam26;

public class MathExam {
	public static void main(String[] args) {
		System.out.println("v1 : " + Math.abs(-5));
		System.out.println("v2 : " + Math.abs(-3.14));

		System.out.println("v3 : " + Math.ceil(5.3));
		System.out.println("v4 : " + Math.ceil(-5.3));

		System.out.println("v5 : " + Math.rint(5.3));
		System.out.println("v6 : " + Math.rint(5.7));

		String str = "しし 切郊 しし";
		str = str.replace("切郊", "Java");
		System.out.println(str);
	}

}
