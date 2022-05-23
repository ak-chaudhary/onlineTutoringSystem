<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String lesson_id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st1=con.createStatement();
	st1.executeUpdate("delete from lesson where id='"+lesson_id+"'");
	response.sendRedirect("allLessonEditLesson.jsp?msg=removed");
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>