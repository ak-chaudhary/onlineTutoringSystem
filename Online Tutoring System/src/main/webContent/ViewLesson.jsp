 <%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<html>
	<head>
		<link rel="stylesheet" href="css/ViewLesson.css">
		<title>View Lesson</title>
		<style>
		.back
		{
		  color: white;
		  margin-left: 2.5%
		}
		</style>
	</head>
	
	<body>
		 <h2><a class="back" href="home.jsp"> Back</a></h2>
		<%
		String id=request.getParameter("id");
		try{
			Connection con=ConnectionProvider.getcon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from lesson where id='"+id+"'");
			while(rs.next())
				{
				%>
				<form>
					<input type="hidden" name="id" value="<% out.println(id);%>">
					
					<div class="left-div">
					<h3>Lesson Topic</h3>
					<input class="input-style" type="text" name="topic" value="<%=rs.getString(2) %>">
					</div>
					
					<div class="left-div">
					<h3>Description</h3>
					<input class="input-style" type="text" name="description" value="<%=rs.getString(3) %>">
					</div>
				 </form>
				 <br><br><br>
				
					 <button class="button">Lecture Video</button>
					 <button class="button">Tutorial</button>
					 <button class="button">Past Papers</button>
					 <button class="button">Reference Links</button>
				 
				<%
				}
		}
		catch(Exception e){
			System.out.println(e);
		}%>
		
	</body>
	<br><br><br>
	</body>
</html>