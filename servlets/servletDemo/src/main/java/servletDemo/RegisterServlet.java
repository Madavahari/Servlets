package servletDemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class RegisterServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
	
		PrintWriter pw=res.getWriter();
		pw.write("<htmL><body>"+
		"<h1>"+name+"</h1>"
		+"<h1>"+email+"</h1>"
		+"<h1>"+phone+"</h1>"
		+"</h1>"+username+"</h1>"
		+"</h1>"+password+"</h1>"
		+"</body></html>");
		
	}

}
