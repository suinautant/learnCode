//¹®Á¦9. »ç¿ëÀÚ·ÎºÎÅÍ ½Ç¼ö°ªÀ» ÀÔ·Â¹Þ¾Æ¼­ µ¡¼À, »¬¼À, °ö¼À, ³ª´°¼À ¿¬»êÀ» ÇÏ¿© Ãâ·ÂÇÏ´Â ÀÚ¹ÙÇÁ·Î±×·¥À» ÀÛ¼ºÇÏ½Ã¿À.
//- Ãâ·Â¿¹ -
//2°³ÀÇ °ªÀ» ÀÔ·ÂÇÏ¼¼¿ä : 1.23 4.56
//µ¡¼À : 5.79
//»¬¼À : -3.33
//°ö¼À : 5.61
//³ª´°¼À : 0.27

package example;

import java.util.Scanner;

public class ex9 {

	public static void main(String[] args) {
		double x, y, plus, minus, mul, sub;
		Scanner sc = new Scanner(System.in);

		System.out.print("2°³ÀÇ °ªÀ» ÀÔ·ÂÇÏ¼¼¿ä : ");
		x = sc.nextDouble();
		y = sc.nextDouble();

		plus = x + y;
		minus = x - y;
		mul = x * y;
		sub = x / y;

//		System.out.printf("µ¡¼À : %.2f\n", plus);
//		System.out.printf("»¬¼À : %.2f\n", minus);
//		System.out.printf("°ö¼À : %.2f\n", mul);
//		System.out.printf("³ª´°¼À : %.2f\n", sub);

		System.out.printf("µ¡¼Á : %.2f\n»¬¼À : %.2f\n°ö¼À : %.2f\n³ª´°¼À : %.2f\n", plus, minus, mul, sub);
	}

}
