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
		System.out.println("삭제 할 학생 이름 입력 : ");
		String query = sc.next();

		for (int i = 0; i < list.size(); i++) {
			Student s = list.get(i);
			if (s.name.equals(query)) {
				boolean result = list.remove(s);
				if (result) {
					System.out.println(query + "학생 정보는 정상적으로 삭제되었습니다.");
					System.out.println();
				}
			}
		}

	}

	public static void listMenu() {
		System.out.println("찾을 학생 이름 입력 : ");
		String query = sc.next();

		for (Student s : list) {
			if (s.name.equals(query)) {
				System.out.println("이름 : " + s.name);
				System.out.println("주소 : " + s.address);
				System.out.println("전화번호 : " + s.tel);
				System.out.println();
			}
		}

//		for (int i = 0; i < list.size(); i++) {
//			Student s = list.get(i);
//			if (s.name.equals(query)) {
//				System.out.println("이름 : " + s.name);
//				System.out.println("주소 : " + s.address);
//				System.out.println("전화번호 : " + s.tel);
//					System.out.println();
//			}
//
//		}
	}

	public static void addMenu() throws Exception {
		Student student = new Student();

		System.out.print("이름 : ");
		student.name = sc.next();
		System.out.print("주소 : ");
		student.address = sc.next();
		System.out.print("전화번호 : ");
		student.tel = sc.next();
//		list.add(new Student(student.name, student.address, student.tel));
		list.add(student);
		System.out.println();
	}

	public static void mainMenu() {
		try {
			while (true) {

				System.out.println("*** 메뉴 ***");
				System.out.println("1. 학생 추가");
				System.out.println("2. 학생 조회");
				System.out.println("3. 학생 삭제");
				System.out.println("4. 종료");
				System.out.print("입력 : ");

				int menu = sc.nextInt();

				switch (menu) {
				case 1:
					System.out.println("추가");
					System.out.println();
					addMenu();
					break;
				case 2:
					System.out.println("조회");
					System.out.println();
					listMenu();
					break;
				case 3:
					System.out.println("삭제");
					System.out.println();
					delMenu();
					break;

				case 4:
					break;

				default:
					System.out.println("1~4 범위 내에서 선택하세요");
					System.out.println();
					break;
				}
				System.out.println();

				if (menu == 4) {
					System.out.println("종료합니다.");
					System.out.println();
					break;
				}

			}

		} catch (Exception e) {
			System.out.println("에외 상황 : " + e + "발생");
		}
	}

}
