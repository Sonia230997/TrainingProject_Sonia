package com.tadigital.ecommerce.customer.service;

import java.util.ArrayList;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import com.tadigital.ecommerce.customer.dao.EmployeeDao;
import com.tadigital.ecommerce.customer.entity.Employee;

public class EmployeeService {
	EmployeeDao employeeDao = new EmployeeDao();

	public boolean loginEmployee(Employee employee) {
		boolean status = employeeDao.selectEmployeeByEmailAndPassword(employee);

		return status;
	}

	public boolean registerEmployee(Employee employee) {
		boolean status = employeeDao.insertEmployee(employee);

		if (status) {
			sendWelcomeMail(employee.getFirstName() + " " + employee.getLastName(), employee.getEmail());
		}

		return status;
	}

	public String sendWelcomeMail(String name, String email) {
		String status = "NOT SENT";

//MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

//CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("soniasutradhar@gmail.com", "XXXXX");
			}
		});
		try {
//COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("soniasutradhar@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("Welcome to the world of TA Digital!");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='#DAF7A6'>Dear <i><font color='#FF7A33'>" + name + "</font></i>,<br/><br/>"
					+ "<img src='cid:image1'><br/><h2><font color='#C70039'>Welcome to TA Digital Family!</font></h2>"
					+ "<br/><font color='#900C3F'>We are excited to have you on-board.</font>"
					+ "<br/><br/><br/><font color='#581845'>Stay tuned and we have got some great things in store for you.</font>"
					+ "<br/><br/><br/><font color='#FFC300'>Happy Shopping!<br/>TA Digital<br/><br/></font><img src='cid:image'></body>";
			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			DataSource fds = new FileDataSource(
					"D://Trainee Engineers March 2019/workspace/TrainingProject_Sonia/WebContent/images/logo.png");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image>");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			fds = new FileDataSource(
					"D://Trainee Engineers March 2019/workspace/TrainingProject_Sonia/WebContent/images/welcome.jpg");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image1>");
			mp.addBodyPart(mbp1);

			mimeMessage.setContent(mp);

//SEND MAIL
			Transport.send(mimeMessage);

			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return status;
	}
}
