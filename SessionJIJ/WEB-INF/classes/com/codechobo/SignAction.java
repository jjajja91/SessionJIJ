package com.codechobo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignAction")
public class SignAction extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");	
		Dao dao = Dao.getInstance();
		User user = new User(id, pwd, email, name, birth, phone, gender);
		dao.create(user);
		response.sendRedirect("LoginForm.jsp");
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
