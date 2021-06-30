package org.airlineticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AirlineTicketBooking")
public class AirlineTicketBooking extends HttpServlet {

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

	 System.out.println("inside main 2222222");
   query = "select * from FLIGHT where from_loaction='" + request.getParameter("from").toLowerCase() + "' and "
   			+ "to_location='" + request.getParameter("to").toLowerCase() + "' and "
   			+ "depurture_time='" + request.getParameter("depart") + "'";
   System.out.println(query);
   try {
		preparedStatement = connection.prepareStatement(query);
		resultSet = preparedStatement.executeQuery();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet AirlinetServlet</title>");
		out.println("</head>");
		out.println("<body>");

		// List to hold Student objects
		ArrayList<FlightSearchResult> std = new ArrayList<FlightSearchResult>();

		// Adding members to the list. Here we are
		// using the parameterized constructor of
		// class "Student.java"
		while (resultSet.next()) {
			std.add(new FlightSearchResult(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3),
					resultSet.getString(4), resultSet.getString(5), resultSet.getString(8) ));
		}
		
		System.out.println(std);
		request.setAttribute("data", std);

		// Creating a RequestDispatcher object to dispatch
		// the request the request to another resource
		RequestDispatcher rd = request.getRequestDispatcher("FlightSearchResult.jsp");

		// The request will be forwarded to the resource
		// specified, here the resource is a JSP named,
		// "stdlist.jsp"
		rd.forward(request, response);
		out.println("</body>");
		out.println("</html>");
     
  }
  catch (SQLException e) {
	  e.printStackTrace();
  }
  
 }

	@Override
	public void destroy() {
		try {				
			resultSet.close();
	                preparedStatement.close();
		}
		catch (SQLException e) {
	
			e.printStackTrace();
		}	
	
	}
}

