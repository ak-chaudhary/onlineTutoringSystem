<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
	<head>
		<link rel="stylesheet" href="../css/addNewLesson-style.css">
		<title>Add New Lesson</title>
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
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from lesson where id='"+id+"'");
			while(rs.next())
				{
				%>
				<form action="editLessonAction.jsp" method="post">
					<input type="hidden" name="id" value="<% out.println(id);%>">
					
					<div class="left-div">
					<h3>Lesson Topic</h3>
					<input class="input-style" type="text" name="topic" value="<%=rs.getString(2) %>" required>
					<hr>
					</div>
					
					<!--  <div class="left-div">
					<h3>Description</h3>
					<input class="input-style" type="text" name="description" value="<%=rs.getString(3) %>" required>
					<hr>
					</div> -->
					
					<div class="left-div">
					<h3>Description</h3>
					 <textarea class="input-style" name="description" value="<%=rs.getString(3) %>" required></textarea>
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
					 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
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