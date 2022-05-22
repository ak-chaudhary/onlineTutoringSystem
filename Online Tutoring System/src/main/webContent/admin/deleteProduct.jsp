<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%
String name=session.getAttribute("name").toString();
String product_id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from cart where name='"+name+"' and product_id='"+product_id+"' and address is Null");
	response.sendRedirect("allProductEditProduct.jsp?msg=removed");
}
catch(Exception e){
	
	System.out.println(e);
	
}


%>