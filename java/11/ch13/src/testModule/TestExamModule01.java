package testModule;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Student {
	String name;
	String address;
	String tel;

	public Student() {

	}

	public Student(String name, String address, String tel) {
		this.address = address;
		this.name = name;
		this.tel = tel;
	}
}

public class TestExamModule01 {
	static List<Student> list = new ArrayList<>();
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		mainMenu();
	}

	public static void delMenu() {
		System.out.println("���� �� �л� �̸� �Է� : ");
		String query = sc.next();

		for (int i = 0; i < list.size(); i++) {
			Student s = list.get(i);
			if (s.name.equals(query)) {
				boolean result = list.remove(s);
				if (result) {
					System.out.println(query + "�л� ������ ���������� �����Ǿ����ϴ�.");
					System.out.println();
				}
			}
		}

	}

	public static void listMenu() {
		System.out.println("ã�� �л� �̸� �Է� : ");
		String query = sc.next();

		for (Student s : list) {
			if (s.name.equals(query)) {
				System.out.println("�̸� : " + s.name);
				System.out.println("�ּ� : " + s.address);
				System.out.println("��ȭ��ȣ : " + s.tel);
				System.out.println();
			}
		}

//		for (int i = 0; i < list.size(); i++) {
//			Student s = list.get(i);
//			if (s.name.equals(query)) {
//				System.out.println("�̸� : " + s.name);
//				System.out.println("�ּ� : " + s.address);
//				System.out.println("��ȭ��ȣ : " + s.tel);
//					System.out.println();
//			}
//
//		}
	}

	public static void addMenu() throws Exception {
		Student student = new Student();

		System.out.print("�̸� : ");
		student.name = sc.next();
		System.out.print("�ּ� : ");
		student.address = sc.next();
		System.out.print("��ȭ��ȣ : ");
		student.tel = sc.next();
//		list.add(new Student(student.name, student.address, student.tel));
		list.add(student);
		System.out.println();
	}

	public static void mainMenu() {
		try {
			while (true) {

				System.out.println("*** �޴� ***");
				System.out.println("1. �л� �߰�");
				System.out.println("2. �л� ��ȸ");
				System.out.println("3. �л� ����");
				System.out.println("4. ����");
				System.out.print("�Է� : ");

				int menu = sc.nextInt();

				switch (menu) {
				case 1:
					System.out.println("�߰�");
					System.out.println();
					addMenu();
					break;
				case 2:
					System.out.println("��ȸ");
					System.out.println();
					listMenu();
					break;
				case 3:
					System.out.println("����");
					System.out.println();
					delMenu();
					break;

				case 4:
					break;

				default:
					System.out.println("1~4 ���� ������ �����ϼ���");
					System.out.println();
					break;
				}
				System.out.println();

				if (menu == 4) {
					System.out.println("�����մϴ�.");
					System.out.println();
					break;
				}

			}

		} catch (Exception e) {
			System.out.println("���� ��Ȳ : " + e + "�߻�");
		}
	}

}
