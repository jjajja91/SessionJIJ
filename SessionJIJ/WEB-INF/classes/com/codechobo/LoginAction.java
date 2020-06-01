package com.codechobo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {

	boolean loginCheck(String id, String pwd) {
//		Dao dao = Dao.getInstance();
//		User user = dao.readOne(id);
//		if (user != null) {
//			return pwd.equals(user.getPassword());
//		}
//		return false;
		return id.equals("asdf") && pwd.equals("1234");
	}

	boolean isEmpty(String check) {
		return check == null;
	}

	void removeCookie(Cookie[] cookies, String key, String value, HttpServletResponse response) {
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals(key)) {
					Cookie cookie = new Cookie(key, value);
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	}

	void createCookie(String key, String value, HttpServletResponse response) {
		Cookie cookie = new Cookie(key, value);
		response.addCookie(cookie);
	}

	void saveSession(String key, String value, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String check = request.getParameter("rememberId");
		String url = request.getParameter("url");
		if (loginCheck(id, pwd)) {
			if (!isEmpty(check)) {
				createCookie("id", id, response);
			} else {
				removeCookie(request.getCookies(), "id", id, response);
			}
			saveSession("id", id, request);
			response.sendRedirect(url);
		} else {
			removeCookie(request.getCookies(), "id", id, response);
			response.sendRedirect("LoginForm.jsp?status=fail");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
