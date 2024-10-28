package servletDemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns="/userlog")
public class UserLoginServlet extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		System.out.println("hii");
		String user=req.getParameter("username");
		String pass=req.getParameter("password");
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1>"+user+"</h1><h1>"+pass+"</h1></body></html>");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hiii");
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1>Access Denied</h1></body></html>");
	}
	

}
