package life_cycle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/hi")
public class OurServlet extends HttpServlet
{
	public OurServlet()
	{
		System.out.println("OurServlet constructor");
	}
	
	@Override
	public void init() {
		System.out.println("OurServlet init()");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("OurServlet service()");
	}
	@Override
	public void destroy() 
	{
		System.out.println("OurServlet destroy()");
		
	}

}
