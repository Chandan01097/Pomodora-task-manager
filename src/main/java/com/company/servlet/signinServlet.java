package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.company.dao.*;


public class signinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao UserDao = new UserDaoImpl();
   
    public signinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(UserDao.isvalidUser(username,password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			response.sendRedirect("mainpage.jsp");}
		else {
			response.sendRedirect("Login.jsp?Error=1");
			System.out.println("Error a Gya");}
		doGet(request, response);
	}

}
