package com.codechobo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAction")
public class DeleteAction extends HttpServlet {

	// 비어있는지 확인하는 메서드
	boolean isEmpty(String check) {
		return check == null;
	}
	
	// 글 하나 지우는 메서드
	void delOne(String numTmp) {
		int num = Integer.parseInt(numTmp);
		Dao dao = Dao.getInstance();
		dao.deleteBoard(num);	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String numTmp = request.getParameter("delNum");
			delOne(numTmp);
			response.sendRedirect(request.getContextPath()+"/boardList.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
