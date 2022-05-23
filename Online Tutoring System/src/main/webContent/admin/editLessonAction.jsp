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
	Statement st=con.createStatement();
	st.executeUpdate("update lesson set topic='"+topic+"',description='"+description+"',subject='"+subject+"',active='"+active+"' where id='"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allLessonEditLesson.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("allLessonEditLesson.jsp?msg=wrong");
}
%>