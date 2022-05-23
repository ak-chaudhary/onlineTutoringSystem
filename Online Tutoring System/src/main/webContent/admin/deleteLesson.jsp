<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
	<head>
		<link rel="stylesheet" href="../css/addNewLesson-style.css">
		<title>Delete Lesson</title>
		<style>
		.back
		{
		  color: white;
		  margin-left: 2.5%
		}
		</style>
	</head>
	
	<body>
		 <h2><a class="back" href="allLessonEditLesson.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
		<%
		String id=request.getParameter("id");
		try{
			Connection con=ConnectionProvider.getcon();
			Statement st1=con.createStatement();
			ResultSet rs=st1.executeQuery("select *from lesson where id='"+id+"'");
			while(rs.next())
				{
				%>
				<form action="deleteLessonAction.jsp" method="post">
					<input type="hidden" name="id" value="<% out.println(id);%>">
					
					<div class="left-div">
					<h3>Lesson Topic</h3>
					<input class="input-style" type="text" name="topic" value="<%=rs.getString(2) %>" required>
					<hr>
					</div>
					
					<div class="left-div">
					<h3>Description</h3>
					<input class="input-style" type="text" name="description" value="<%=rs.getString(3) %>" required>
					<hr>
					</div>
					
					<div class="left-div">
					<h3>Subject</h3>
					<input class="input-style" type="text" name="subject" value="<%=rs.getString(4) %>" required>
					 
					<hr>
					</div>
					
					<div class="left-div">
					<h3>Want to show students this lesson?</h3>
					<select class="input-style" name="active">
					<option value="Yes">Yes</option>
					<option value="No">NO</option>
					</select>
					
					 <hr>
					</div>
					 <button class="button">Delete </button>
				 </form>
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