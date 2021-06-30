package org.airlineticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerData")
public class CustomerData extends HttpServlet {

 Connection connection = null;
 ResultSet resultSet = null;
 PreparedStatement preparedStatement = null;
 String query = null;
 String url = null;
 String username = null;
 String password = null;

 public void init(ServletConfig config) throws ServletException {

  url = "jdbc:oracle:thin:@localhost:1521:xe";
  username = "system"; 
  password = "system"; 
  try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	connection = DriverManager.getConnection(url, username , password);
  }
  catch (Exception e) {
	  e.printStackTrace();
  }
 }

 protected void doPost(
   HttpServletRequest request, 
   HttpServletResponse response
   ) throws ServletException, IOException {

	 System.out.println("inside main Customer Data");
   try {
		response.setContentType("text/html;charset=UTF-8");
		String fname = request.getParameter("fName");
		String lname = request.getParameter("lName");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String telno = request.getParameter("telno");
		String email = request.getParameter("email");
		String selected_flight = request.getParameter("selected_flight");
		
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet CustomerDataServlet</title>");
		out.println("</head>");
		out.println("<body>");

		PreparedStatement ps = connection.prepareStatement("INSERT INTO PASSENGER_PROFILE VALUES (?,?,?,?,?,?,?)");
		ps.setString(1, telno);
		ps.setString(2, password);
		ps.setString(3, fname);
		ps.setString(4, lname);
		ps.setString(5, address);
		ps.setString(6, telno);
		ps.setString(7, email);
		
		int i = ps.executeUpdate();
		if (i > 0)
			out.print("You are successfully registered...");

		PreparedStatement ps1 = connection.prepareStatement("INSERT INTO TICKET_INFO VALUES (?,?,?)");
		ps1.setString(1, selected_flight);
		ps1.setString(2, telno);
		ps1.setString(3, new Date().toString());
		
		int j = ps1.executeUpdate();
		if (j > 0)
			out.print("You are successfully booked ticket...");

		// Creating a RequestDispatcher object to dispatch
		// the request the request to another resource
		RequestDispatcher rd = request.getRequestDispatcher("Confirmation.jsp");

		// The request will be forwarded to the resource
		// specified, here the resource is a JSP named,
		// "stdlist.jsp"
		rd.forward(request, response);
		out.println("</body>");
		out.println("</html>");
     
  }
  catch (Exception e) {
	  e.printStackTrace();
  }
  
 }

	@Override
	public void destroy() {
		try {				
			resultSet.close();
	                preparedStatement.close();
		}
		catch (Exception e) {
	
			e.printStackTrace();
		}	
	
	}
}

