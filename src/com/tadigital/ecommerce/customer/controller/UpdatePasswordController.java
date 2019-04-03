package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Employee;
import com.tadigital.ecommerce.customer.service.EmployeeService;

@WebServlet("/update")

public class UpdatePasswordController extends HttpServlet {
	@Override

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String oldpass = req.getParameter("f1");
		String newpass = req.getParameter("f2");
		String retype = req.getParameter("f3");

		Employee employee = new Employee();
HttpSession session=req.getSession();
		employee.setPassword(newpass);

		if (newpass.equals(retype)) {

			String mail=(String)session.getAttribute("mail");
			employee.setEmail(mail);
			EmployeeService employeeService = new EmployeeService();
			boolean status = employeeService.updatePassword(employee);
			if (status) {
				// HttpSession s=req.getSession();
				req.setAttribute("pwd", "S");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			} else {
				// HttpSession s=req.getSession();
				req.setAttribute("pwd", "F");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}

		}
	}
}
