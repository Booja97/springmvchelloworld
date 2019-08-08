<!DOCTYPE html>
<%@page import="com.example.stockspring.model.Company"%>
<%@page import="java.util.List"%>

<html lang="en">

<head>
<title>Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
	<%
              List companyList = (List) request.getAttribute("companyList");
              System.out.println(companyList);
       %>
	<header id="header">
		<div class="container">
			<div id="logo" class="pull-right">
				<h1>STOCK MARKET CHARTING</h1>
			</div>
		</div>
	</header>
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark"
		style="margin-top: 30px;">
		<div class="container-fluid" style="margin-right: 50px;">
			<ul class="navbar-nav ">
				<li style="margin-left: 80px;" class="nav-item active"><a
					class="nav-link" href="admin.html">Home</a></li>
				<li style="margin-left: 80px;" class="nav-item active"><a
					class="nav-link" href="ImportData.html">Import Data</a></li>
				<li style="margin-left: 80px;" class="nav-item active"><a
					class="nav-link" href="ManageCompany.html">Manage Company</a></li>
				<li style="margin-left: 80px;" class="nav-item active"><a
					class="nav-link" href="ManageExchange.html">Manage Exchange</a></li>
				<li style="margin-left: 80px;" class="nav-item active"><a
					class="nav-link" href="UpdateIpo.html">Update IPO Details</a></li>
				<li style="margin-left: 700px;" class="nav-item active"><a
					href="Login.html"><button type="button">Log out</button> </a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<h2>List of Companies</h2>

		<table style="width: 100%">
        <tr>

				<th scope="col">Company code</th>
				<th scope="col">BreifWriteUp</th>
				<th scope="col">CEO</th>
				<th scope="col">BOD</th>
				<th scope="col">Update</th>
			</tr>

			<tr>
				<%
                      for (int i = 0; i < companyList.size(); i++) {
                             Company e = (Company) companyList.get(i);
                %>
			
			<tr>
				<td><%=e.getCompanyId()%></td>
				<td><%=e.getBriefWriteUp()%></td>
				<td><%=e.getCeo()%></td>
				<td><%=e.getBoardOfDirectors()%></td>

				<td>
					<form action="EditComp.html">
						<input type="submit" value="Edit" />
					</form>
				</td>


			</tr>
			<%
                     }
             %>

		</table>
		<br>

	</div>

</body>

</html>
