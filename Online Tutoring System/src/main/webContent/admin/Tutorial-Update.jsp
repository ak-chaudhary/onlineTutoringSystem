<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.header {
	background-color: #000099;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

.well {
	background-color: #4dff88;
	padding: 10px;
	border-radius: 13px
}
</style>
<title>Tutorial Management Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="CSS/InsertForm.css">
<link
	href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap"
	rel="stylesheet">

</head>
<body>


	<header>

		<div class="header">
			<h2
				style="font-family: 'Libre Baskerville', serif; text-transform: uppercase;">Sri
				Shailarama Dhamma Buddhist Association Center</h2>
		</div>

	</header>

	<div class="bg">
		<img style="position: absolute; height: 100vh; width: 100%"
			src="https://k48b9e9840-flywheel.netdna-ssl.com/wp-content/uploads/2021/07/alfons-morales-YLSwjSy7stw-unsplash.jpg">


		<br>
		<div class="container">

			<div class="col-lg-6 well">
				<div class="tit">
					<h2 align="center">Update Tutorials</h2>
				</div>

				<div class="card">
					<div class="card-body">

						<form action="update" method="post">
							<c:if test="${tutorial != null}">

							</c:if>

							<caption>
								<h2>

									<c:if test="${tutorial == null}">

									</c:if>
								</h2>
							</caption>

							<c:if test="${tutorial != null}">
								<input type="hidden" name="id"
									value="<c:out value='${tutorial.id}' />" />
							</c:if>




							<fieldset class="form-group">
								<label>tutorialname</label> <input type="text"
									placeholder="Type Member name here"
									value="<c:out value='${tutorial.tutorialname}' />"
									class="form-control" name="tutorialname" required="required">
							</fieldset>

							<fieldset class="form-group">
								<label>Subject</label> <select
									placeholder="Select the Type Of Work" name="subject"
									class="form-control"
									value="<c:out value='${tutorial.subject}'/>">

									<option>Mathematics</option>
									<option>Geogrophy</option>
									<option>History</option>

								</select>
							</fieldset>

							<fieldset class="form-group">
								<label>Tutorial Type</label> <select
									placeholder="Select the Type Of Work" name="tutorialtype"
									class="form-control"
									value="<c:out value='${tutorial.tutorialtype}'/>">

									<option>Advance Level</option>
									<option>Ordinary Level</option>


								</select>
							</fieldset>

							<fieldset class="form-group">
								<label>Teacher's Name</label> <input type="text"
									placeholder="Type Phone Number here"
									value="<c:out value='${tutorial.teachername}' />"
									class="form-control" name="teachername" required="required">
							</fieldset>

							<fieldset class="form-group">
								<label>Date</label> <input type="date"
									placeholder="Type Address here"
									value="<c:out value='${tutorial.date}' />" class="form-control"
									name="date" required="required">
							</fieldset>



							<button type="submit" class="btn btn-info">Update
								Tutorials</button>
							<a href="Tutorial-insert.jsp">
								<button type="reset" class="btn btn-danger">CANCEL</button>
							</a> <br /> <br />
							<ul class="navbar-nav">
								<li><a href="<%=request.getContextPath()%>/list"
									class="btn btn-secondary" class="nav-link">View All
										Tutorial</a></li>
							</ul>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
>
