package com.pst.sp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.pst.sp.service.UserService;
import com.pst.sp.vo.UserVo;

/**
 * Servlet implementation class UserController
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserService userService;
	
	private UserVo vo;
	

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i = 0;
     
		String rNo = request.getParameter("rollNumber");
		int rollNumber = Integer.parseInt(rNo);
		System.out.println("-->"+rollNumber);
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String setQuestion1 = request.getParameter("sq1");
        String setQuestion2 = request.getParameter("sq2");
        String ans1 = request.getParameter("ans1");
        String ans2 = request.getParameter("ans2");
        
        vo = new UserVo(rollNumber, userName, password, setQuestion1, setQuestion2, ans1, ans2);
		userService = new UserService();
		try {
		 i = userService.registerNewUser(vo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		  if(i >0) {
			  result ="success";
			  message = "Successfully registered";
		  }else {
			  System.out.println("failed");
		  }
		  request.setAttribute("msg", message);
		  request.setAttribute("result", result);
		  RequestDispatcher dispatcher = request.getRequestDispatcher("./home.jsp");
		  dispatcher.forward(request, response); 
	}

}






