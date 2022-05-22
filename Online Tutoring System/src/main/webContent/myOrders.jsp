<%@page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Subscripted Classes <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Teacher</th>
            <th scope="col">Subject</th>
            <th scope="col"><i class=""></i>Fee</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class=""></i> Sub Total</th>
            <th scope="col">Subscripted Date</th>
             <th scope="col">Class Starting Date</th>
             <th scope="col">Payment Method</th>
              
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	Connection con=ConnectionProvider.getcon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next())
	{
		sno=sno+1;
	

%>
          <tr>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(18) %></td>
            <td><i class=""></i><%=rs.getString(19) %> </td>
            <td><%=rs.getString(3) %></td>
            <td><i class=""></i> <%=rs.getString(5) %></td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               
            </tr>
         <%
         }
	}
	catch(Exception e){
		System.out.println(e);
	}
	%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>