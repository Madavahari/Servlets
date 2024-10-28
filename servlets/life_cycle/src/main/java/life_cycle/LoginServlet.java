package life_cycle;

import java.io.IOException;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoginServlet extends GenericServlet {
   
    public LoginServlet() {
        System.out.println("LoginServlet() constructor is called...");
    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("LoginServlet service() method is called...");

        
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
    }

    
}
