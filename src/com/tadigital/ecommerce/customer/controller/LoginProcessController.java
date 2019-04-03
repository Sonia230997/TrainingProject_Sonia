package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.*;
import com.tadigital.ecommerce.customer.service.*;
@WebServlet("/login")
public class LoginProcessController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException  {
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		rd.forward(req, res);
	}
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException{
		String email=req.getParameter("f1");
		String password=req.getParameter("f2");
		
		Employee employee = new Employee();
		employee.setEmail(email);
		employee.setPassword(password);
		
		EmployeeService employeeService = new EmployeeService();
		boolean status = employeeService.loginEmployee(employee);
		if(status) {
			HttpSession s=req.getSession();
			s.setAttribute("mail", email);
			req.setAttribute("sta","S");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, res);
		} else {
			//HttpSession s=req.getSession();
			req.setAttribute("sta","F");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, res);
		}
	}


}



