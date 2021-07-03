package ch12.com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter
{
	@Override 
    public void init(FilterConfig arg0) throws ServletException {  

    } 

    @Override 
    public void doFilter(ServletRequest req, ServletResponse resp, 
            FilterChain chain) throws IOException, ServletException {        

        HttpServletRequest httpRequest = (HttpServletRequest)req; 
        HttpServletResponse httpResponse = (HttpServletResponse)resp; 
        HttpSession session = httpRequest.getSession();         

       if(session == null){
            httpResponse.sendRedirect("http://localhost:8080/Exercise/ch12/loginForm.jsp"); 
        }             

        String id = (String)session.getAttribute("userID"); 

        if(id == null){         	
            httpResponse.sendRedirect("http://localhost:8080/Exercise/ch12/loginForm.jsp");
        }        

        chain.doFilter(req, resp);   

    }      

    @Override 
    public void destroy() {          

    } 
}
