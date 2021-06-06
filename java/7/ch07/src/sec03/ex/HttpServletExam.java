package sec03.ex;

public class HttpServletExam {
	public static void main(String[] args) {
		method(new LoginServlet());
		method(new FileDownloadServlet());
	}

	public static void method(HttpServlet servlet) {
		servlet.service();
	}

}
