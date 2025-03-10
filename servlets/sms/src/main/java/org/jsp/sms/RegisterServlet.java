package org.jsp.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int sid=Integer.parseInt(req.getParameter("sid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phoneNo=Long.parseLong(req.getParameter("phoneNo"));
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		Connection con=null;
		PreparedStatement ps=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","root");
			ps=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
			ps.setInt(1,sid);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setLong(4, phoneNo);
			ps.setString(5, username);
			ps.setString(6, password);
			int row=ps.executeUpdate();
			System.out.println(row+" Rows Affected");
		    
		    PrintWriter pw=resp.getWriter();
		    pw.write("<html><body><h1 id='msg'>Registered Successfully</h1></body></html>");
		    
		    RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		    rd.include(req, resp);
			
		} catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h1>Registeration Failed</h1></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("register.jsp");
		    rd.include(req, resp);
			
		}
		finally
		{
			if(con!=null)
			{
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(ps!=null)
			{
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
	}

}
