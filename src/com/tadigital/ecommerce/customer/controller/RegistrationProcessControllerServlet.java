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

@WebServlet("/register")
public class RegistrationProcessControllerServlet extends HttpServlet{
	@Override

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("RegistrationForm.html");
		rd.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String fullname = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		String fName="";
		String lName="";
		
		Employee employee = new Employee();
		String[] name = fullname.split(" ");
		if(name.length<2) {
			fName=name[0];
			
			employee.setFirstName(fName);
			employee.setEmail(email);
			employee.setPassword(password);
		}
		else {
			fName=name[0];
			lName=name[1];
			
			
			
			employee.setFirstName(fName);
			employee.setLastName(lName);
			employee.setEmail(email);
			employee.setPassword(password);
		}
		
		//s.setAttribute("check",1);
		
		EmployeeService employeeService = new EmployeeService();
		boolean status = employeeService.registerEmployee(employee);
		if(status) {
			//HttpSession s=req.getSession();
			req.setAttribute("stat","S");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		} else {
			//HttpSession s=req.getSession();
			req.setAttribute("stat","F");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}
}
