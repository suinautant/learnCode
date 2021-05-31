package sec01.exam07.p2;

import sec01.exam07.p1.A;

public class D extends A {
	String field2;

	public D() {
		super();
		this.field = "value";
		this.method();
		field2 = this.field;
	}

	public static void main(String[] args) {
		D d = new D();
		System.out.println("this.field : " + d.field);
		System.out.println("D.field : " + d.field2);
	}
}
