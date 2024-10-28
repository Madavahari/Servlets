package life_cycle;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class MyServlet extends GenericServlet
{
	public MyServlet()
	{
		System.out.println("MyServlet() is constructor");
	}
	
	@Override
	public void init() throws ServletException 
	{
		System.out.println("MyServlet() is initialized");
		
	}
	
	
	@Override	
	public void destroy() 
	{
		System.out.println("MyServlet() is destroyed");
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("MyServlet() is service");
	}

	

}
