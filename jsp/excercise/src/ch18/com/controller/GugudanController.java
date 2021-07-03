package ch18.com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.GugudanModel;

public class GugudanController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");		
	
		String dan = request.getParameter("number");
			
		String result = null;
		GugudanModel guModel = new GugudanModel();
		
		
		
		if (dan!=null) 
		{
			result = guModel.GetResult(dan);
		}
		
		request.setAttribute("result", result);
		
		
		
			RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
			rd.forward(request, response);
			

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}

