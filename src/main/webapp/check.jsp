<%@ page import ="com.RestaurantManagement.db.DbConnection" %>
<%@ page import ="java.sql.*" %>
<%
String user=request.getParameter("userName");
String pwd=request.getParameter("pass");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
try{
	Connection con=DbConnection.init();
	Statement stmt=con.createStatement();
	String q;
	ResultSet res;
	String sql="insert into members(firstName, lastName, email, uname, password) values('"+ fname +"','"+ lname + "','"+ email +"','"+ user +"','"+ pwd +"')";
	int i=stmt.executeUpdate(sql);
	if(i>0){
		session.setAttribute("userid", user);
		response.sendRedirect("success.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
}
catch(SQLException se){
	se.printStackTrace();
}
catch(Exception e){
	e.printStackTrace();
}


%>