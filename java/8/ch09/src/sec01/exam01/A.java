package sec01.exam01;

class A {
	A() {
		System.out.println("A 按眉啊 积己凳");
	}

	class B {
		B() {
			System.out.println("B 按眉啊 积己凳");
		}

		int field1;

		void method1() {
			System.out.println("B method1");
		}
	}

	static class C {
		C() {
			System.out.println("C 按眉啊 积己凳");
		}

		int field1;
		static int field2;

		void method1() {
			System.out.println("C method1");
		}

		static void method2() {
			System.out.println("C method2");
		}
	}

	void method() {
		class D {
			D() {
				System.out.println("D 按眉啊 积己凳");
			}

			int field1;

			void method1() {
				System.out.println("D method1");
			}
		}
		D d = new D();
		d.field1 = 3;
		d.method1();

	}
}
