package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImp;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			UserDAOImp dao=new UserDAOImp(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			//System.out.println(email+" "+password);
			
			if("admin@gmail.com".equals(email) && "password".equals(password)) {
				
				User us=new User();
				us.setUserName("admin");
				session.setAttribute("userobj", us);
				resp.sendRedirect("admin/home.jsp");
			}
			else {
				
				User us=dao.login(email, password);
				if(us!=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("failmsg", "Invalid Email or Password");
					resp.sendRedirect("login.jsp");
				}
				
				
				resp.sendRedirect("home.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();		}
		
		
		
	}

	
	
	
}
