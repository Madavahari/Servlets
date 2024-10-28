package hms;

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


@WebServlet(urlPatterns = "/patientDetails")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int patientId =Integer.parseInt(req.getParameter("patientId"));
		String name=req.getParameter("name");
		int age=Integer.parseInt(req.getParameter("age"));
		String gender=req.getParameter("gender");
		long phone=Long.parseLong(req.getParameter("phone"));
		String disease=req.getParameter("disease");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","root");
			PreparedStatement ps=con.prepareStatement("insert into patient values(?,?,?,?,?,?)");
			ps.setInt(1, patientId);
			ps.setString(2, name);
			ps.setInt(3, age);
			ps.setString(4, gender);
			ps.setLong(5, phone);
			ps.setString(6,disease);
			int row=ps.executeUpdate();
			System.out.println(row+" Rows Affected");
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h1>Registered Successfully</h1></body></html>");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
