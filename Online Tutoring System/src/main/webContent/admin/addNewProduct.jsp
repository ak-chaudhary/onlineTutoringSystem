<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Classes</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>

<h3 class="alert">Class Added Successfully!</h3>
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
	ResultSet rs=st.executeQuery(" select max(id) from product");
	while(rs.next()){
		id=rs.getInt(1);
		id=id+1;
	}
	
}
catch(Exception e){
	
}
%>
<form action="addNewProductAction.jsp" method="post">

<h3 style="color: yellow;">Class ID: <%out.println(id); %> </h3>

<input class="input-style" type="hidden" name="id" value="<%out.println(id);%>">

<div class="center">
 <h3>Enter Subject</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Subjet" required>
 <hr>
</div>

<div class="center">
<h3>Enter Teacher</h3>
  <input class="input-style" type="text" name="category" placeholder="Enter Teacher" required>
<hr>
</div>

<div class="center">
<h3>Enter Price</h3>
  <input class="input-style" type="text" name="price" placeholder="Enter price" required>
<hr>
</div>

<div class="center">
<h3>Active</h3>
   <select class="input-style" name="active">
   <option value="Yes">Yes</option>
    <option value="No">NO</option>
   
   </select>
<hr>
</div>
<button class="button"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>