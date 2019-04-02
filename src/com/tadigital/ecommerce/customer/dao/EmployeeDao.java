package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import com.tadigital.ecommerce.customer.entity.*;

public class EmployeeDao extends Dao {
	//METHOD FOR WHEN LOGIN PAGE IS ACCESSED
	public boolean selectEmployeeByEmailAndPassword(Employee employee) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information WHERE cust_email = '" + employee.getEmail() + "' AND cust_pwd = '" + employee.getPassword() + "'";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				status = true;
				employee.setFirstName(rs.getString(1));
				employee.setLastName(rs.getString(2));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return status;
	}
	//METHOD FOR WHEN REGISTRATION PAGE IS ACCESSED
	public boolean insertEmployee(Employee employee) {
		boolean status = false;
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		
		try {
			String sql = "INSERT INTO customer_information(cust_fname, cust_lname, cust_email, cust_pwd) " +
						 "VALUES('" + employee.getFirstName() + "', '" + employee.getLastName() + "', '" + employee.getEmail() + "', '" + employee.getPassword() + "')";
			
			int rows = stmt.executeUpdate(sql);
			if(rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	//METHOD FOR WHEN EMPLOYEELIST PAGE IS ACCESSED
	public ArrayList<Employee> selectAllEmployees() {
		ArrayList<Employee> employeeList = new ArrayList<>(); 
		
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM customer_information";
			
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Employee employee = new Employee();				
				employee.setFirstName(rs.getString(1));
				employee.setLastName(rs.getString(2));
				employee.setEmail(rs.getString(3));
				employee.setPassword(rs.getString(4));
				
				employeeList.add(employee);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		
		return employeeList;
	}
}