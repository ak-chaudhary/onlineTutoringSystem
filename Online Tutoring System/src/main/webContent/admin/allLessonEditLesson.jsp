<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Lesson</title>
		
		<style>
			h3
			{
				color: red;
				text-align: center;
			}
		</style>
	</head>
	
	<body>
	<div style="color: white; text-align: center; font-size: 30px;">All Lessons and Edit Lessons <i class='fab fa-elementor'></i></div>
	<%
	String msg=request.getParameter("msg");
	if("done".equals(msg))
	{
	%>
	<h3 class="alert">Lessons Successfully Updated!</h3>
	<%} %>
	<%
	if("wrong".equals(msg))
	{
	%>
	<h3 class="alert">Lessons Successfully Updated!</h3>
	<%} %>
	
	<table> <!-- beginning of all Lessons & edit lessons table -->
	      <thead> <!-- beginning of table head -->
	        <tr>
	          <th scope="col">Lesson ID</th>
	          <th scope="col">Topic</th>
	          <th >Description</th>
	          <th scope="col">Subject</th>
	          <th>Status</th>
	          <th scope="col">Edit<i class='fas fa-pen-fancy'></i></th>
	          <th scope="col">Delete</th>
	        </tr>
	       </thead><!-- end of table head -->
	        
	       <tbody> <!-- beginning of table body -->
		       <%
		       try{
		    	   Connection con=ConnectionProvider.getcon();
		    	   Statement st=con.createStatement();
		    	   ResultSet rs=st.executeQuery("select *from lesson");
		    	   while(rs.next())
		    	   {
		       %>
		          <tr>
		            <td><%=rs.getString(1) %></td>
		            <td><%=rs.getString(2) %></td>
		            <td ><%=rs.getString(3) %></td>
		            <td> <%=rs.getString(4) %></td>
		            <td><%=rs.getString(5) %></td>
		            <td><a href="editLesson.jsp?id=<%=rs.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
		            <td><a href="deleteLesson.jsp?id=<%=rs.getString(1) %>">Delete </a></td>
		          </tr>
		         <%}
		    	   }
		    	   catch(Exception e)
		    	   {
		    		   System.out.println(e);
		    	   }%>
	        </tbody> <!-- end of table body -->
	        
	  </table> <!-- end of all Lessons & edit lessons table -->
	  <br><br><br>
	</body>
</html>