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



@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String userName=req.getParameter("userName");
			String userEmail=req.getParameter("userEmail");
			String userPassword=req.getParameter("userPassword");
	        String userPhone1=req.getParameter("userPhone");
			String userAddress=req.getParameter("userAddress");
			
			//System.out.println(userName+" "+userEmail+" "+userPassword+" "+userPhone+" "+userAddress+" ");
			
			Long userPhone=Long.parseLong(userPhone1);
			
			User us=new User();
			us.setUserName(userName);
			us.setUserEmail(userEmail);
			us.setUserPassword(userPassword);
			us.setUserPhone(userPhone);
			us.setUserAddress(userAddress);
			
			
			
			HttpSession session=req.getSession();
			
			UserDAOImp dao=new UserDAOImp(DBConnect.getConn());//parameter return conn 
			boolean f=dao.userRegister(us);
			if(f) {
				//System.out.println("User Register Successfully");
				session.setAttribute("succmsg","Registeration Successfully");
				resp.sendRedirect("register.jsp");
			}
			else {
				//System.out.println("Something Went Wrong...");
				session.setAttribute("failmsg","Something Went Wrong...");
				resp.sendRedirect("register.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
	
	
}
