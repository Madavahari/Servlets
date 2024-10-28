package servletDemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/userreg")
public class UserRegServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("userRegister class doPost();");
		
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String user=req.getParameter("username");
		String pass=req.getParameter("password");
		String date=req.getParameter("date");
		System.out.println(date);
		PrintWriter pw=resp.getWriter();
		pw.write("<html> <body> <h1>"+name+"</h1><h1>"+email+"</h1><h1>"+phone+"</h1><h1>"+user+"</h1><h1>"+pass+"</h1><h1>"+date+"</h1> </body></html>");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		System.out.println("Access Denied");
		PrintWriter pw=resp.getWriter();
		pw.write("<html> <body> <h1>Access Denied...</h1> </body> </html>");
	}
}
