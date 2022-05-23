<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String topic=request.getParameter("topic");
String description=request.getParameter("description");
String subject=request.getParameter("subject");
String active=request.getParameter("active");

try{
	Connection con=ConnectionProvider.getcon();
	PreparedStatement ps=con.prepareStatement("insert into lesson values(?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,topic);
	ps.setString(3,description);
	ps.setString(4,subject);
	ps.setString(5,active);
	ps.executeUpdate();
	response.sendRedirect("addNewLesson.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addNewLesson.jsp?msg=wrong");
}
%>

