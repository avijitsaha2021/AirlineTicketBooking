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

@WebServlet("/BookSelctedTicket")
public class BookSelctedTicket extends HttpServlet {

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
	 try {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet StudentServlet</title>");
		out.println("</head>");
		out.println("<body>");

	    String selected_flight = request.getParameter("selected_flight");
	    System.out.println("inside main 2222222" + selected_flight);
		request.setAttribute("data", selected_flight);

		// Creating a RequestDispatcher object to dispatch
		// the request the request to another resource
		RequestDispatcher rd = request.getRequestDispatcher("CustomerData.jsp");

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
		catch (SQLException e) {
	
			e.printStackTrace();
		}	
	
	}
}

