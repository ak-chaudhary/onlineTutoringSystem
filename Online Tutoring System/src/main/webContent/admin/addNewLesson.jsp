<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
	<head>
		<link rel="stylesheet" href="../css/addNewLesson-style.css">
		<title>Add New Lesson</title>
	</head>
	
	<body>
		<%
		String msg=request.getParameter("msg");
		if("done".equals(msg))
		{
		%>
		<h3 class="alert">Lesson Added Successfully!</h3>
		<%} %>
		<%
		if("wrong".equals(msg))
		{
		%>
		<h3 class="alert">Some thing went wrong! Try Again!</h3>
		<%} %>
		
		<%
		int id=1;
		try{
			Connection con=ConnectionProvider.getcon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select max(id) from lesson");
			while(rs.next())
			{
				id=rs.getInt(1);
				id=id+1;
			}
		}
		catch(Exception e){
			
		}
		%>
		<form action="addNewLessonAction.jsp" method="post">
			
			<div class="left-div">
			 <h3  style="color: black;">Lesson ID: <%out.println(id); %> </h3>
			 <input type="hidden" name="id" value="<%out.println(id);%>">
			<hr>
			</div>
			
			<div class="left-div">
			 <h3>Lesson Topic</h3>
			 <input class="input-style" type="text" name="topic" placeholder="Enter the Lesson Topic" required>
			<hr>
			</div>
			
			<div class="left-div">
			<h3>Description</h3>
			 <textarea class="input-style" name="description" placeholder="Enter the Description" required></textarea>
			<hr>
			</div>
			
			
			<div class="left-div">
			<h3>Subject</h3>
			 <input class="input-style" type="text" name="subject" placeholder="Enter the Subject" required>
			<hr>
			</div>
			
			<div class="left-div">
			<h3>Want to show students this lesson?</h3>
			<select class="input-style" name="active">
			<option value="Yes">Yes</option>
			<option value="No">No</option>
			</select> 
			<hr>
			</div>
			
			 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
		</form>
		
		
		
	</body>
	<br><br><br>
</html>