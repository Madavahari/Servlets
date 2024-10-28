package org.jsp.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int sid=Integer.parseInt(req.getParameter("sid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phoneNo=Long.parseLong(req.getParameter("phoneNo"));
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sms","root","root");
			PreparedStatement ps=con.prepareStatement("update student set name=?,email=?,phoneNo=?,username=?,password=? where sid=?");
			ps.setString(1,name);
			ps.setString(2, email);
			ps.setLong(3, phoneNo);
			ps.setString(4, username);
			ps.setString(5, password);
			ps.setInt(6,sid);
			
			int row=ps.executeUpdate();
			System.out.println(row+" Row Updated");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1 id='msg'>Employee Updated Successfully </h1></body></html>");
		RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
		rd.include(req, resp);
		

		
		
	}


	

}
