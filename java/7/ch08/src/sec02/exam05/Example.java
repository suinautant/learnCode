package sec02.exam05;

public class Example {
	public static void main(String[] args) {
		Impl impl = new Impl();
		
		IA ia = impl;
		ia.methodA();
		System.out.println();
		
		IB ib = impl;
		ib.methodB();
		System.out.println();
		
		IC ic = impl;
		ic.methodA();
		ic.methodB();
		ic.methodC();
		System.out.println();
		
		impl.methodA();
		impl.methodB();
		impl.methodC();
	}

}
