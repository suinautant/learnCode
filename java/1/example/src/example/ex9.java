/*����9. ���� �߷��� ������ �� 17%��� �Ѵ�. �ڽ��� �����԰� 70kg�̶�� �� �� �޿����� �����Ը� ����ϴ� �ڹ����α׷��� �ۼ��Ͻÿ�.
- ��¿� -
�޿����� �����Դ� 11.9kg�Դϴ�.*/
package example;

public class ex9 {

	public static void main(String[] args) {
		double moonGravity = 17;
		double weight = 70;
		double moonWeight = (weight * moonGravity) / 100;
		System.out.printf("�޿����� �����Դ� %.1fkg�Դϴ�.", moonWeight);
	}

}
