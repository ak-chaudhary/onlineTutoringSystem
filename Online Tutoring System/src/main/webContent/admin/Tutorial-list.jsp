<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Tutorial Management Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap"
	rel="stylesheet">

<style type="text/css">
.myInput {
	background-image: url('/css/searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

.header {
	background-color: #000099;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}
</style>

<link rel="stylesheet" type="text/css" href="CSS/List.css">

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

			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<div class="row">

							<div class="container">
								<h2 style="font-family: 'Libre Baskerville', serif;text-transform: uppercase;" class="text-center">Tutorial List</h2>

								<div class="container text-left">

									<a href="Tutorial-insert.jsp" class="btn btn-secondary">Add
										New Tutorial</a> <input type="text" id="myInput"
										onkeyup="myFunction()" placeholder="Search for Tutorial ID"
										title="Type in a name">

								</div>
								<br>
								<table class="table table-bordered table table-hover"
									id="myTable">
									<thead class="thead-dark">
										<tr>
											<th>Tutorial ID</th>
											<th>Tutorial Name</th>
											<th>Subject</th>
											<th>Tutorial Type</th>
											<th>Teacher Name</th>
											<th>Date</th>
											<th>Action</th>


										</tr>
									</thead>
									<tbody>

										<c:forEach var="tutorial" items="${listTutorial}">

											<tr>
												<td><c:out value="${tutorial.id}" /></td>
												<td><c:out value="${tutorial.tutorialname}" /></td>
												<td><c:out value="${tutorial.subject}" /></td>
												<td><c:out value="${tutorial.tutorialtype}" /></td>
												<td><c:out value="${tutorial.teachername}" /></td>
												<td><c:out value="${tutorial.date}" /></td>

												<td>
													<div class="btn-group">
														<label class="p-0 mr-1 my-0"> <a
															href="edit?id=<c:out value='${tutorial.id}' />"><button
																	type="submit" class="btn btn-primary">Edit</button></a>
														</label> <label class="p-0 my-0"> <a
															href="delete?id=<c:out value='${tutorial.id}' />"><button
																	type="submit" class="btn btn-danger" value="delete"
																	onclick="return confirm('Are you sure you want to delete?')">Delete</button></label>
													</div>
												</td>
											</tr>
										</c:forEach>

									</tbody>

								</table>

								<script>
									function myFunction() {
										// Declare variables
										var input, filter, table, tr, td, i, txtValue;
										input = document
												.getElementById("myInput");
										filter = input.value.toUpperCase();
										table = document
												.getElementById("myTable");
										tr = table.getElementsByTagName("tr");

										// Loop through all table rows, and hide those who don't match the search query
										for (i = 0; i < tr.length; i++) {
											td = tr[i]
													.getElementsByTagName("td")[0];
											if (td) {
												txtValue = td.textContent
														|| td.innerText;
												if (txtValue.toUpperCase()
														.indexOf(filter) > -1) {
													tr[i].style.display = "";
												} else {
													tr[i].style.display = "none";
												}
											}
										}
									}
								</script>

								<a href="<%=request.getContextPath()%>/report">
									<button type="button" class="btn btn-success">Tutorial
										Report</button>
								</a>

							</div>
						</div>

						<!-- FOOTER -->
						<footer class="container">
							<p class="float-right">
								<a href="Tutorial-insert.jsp">Back to top</a>
							</p>
						
							
						</footer>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
