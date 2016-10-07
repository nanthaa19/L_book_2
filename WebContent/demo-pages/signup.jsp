<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<title>signup</title>
</head>
<body>
<body style="background-color: F5F5F5">
	<div class="container row">
		<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #AC5685;">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavigationbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp" style="color:white;"><span class="icon-bar"></span>KL Book Prediction</a>
				</div>
				<jsp:include page="pages/navigation.jsp"></jsp:include>
			</div>
		</nav>
	</div>
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<h4>KL Book Statistic</h4>
		</div>
	</div>
	<div class="container" style="height: 150px;">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal" action="OracleDataBase?action=insert" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="EmployeeCode">EmployeeName :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="EmployeeCode" name="EmployeeCode" required placeholder="Enter Employee Code">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="FirstName">FirstName:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="FirstName" required name="FirstName" placeholder="Enter FirstName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="MiddleName">MiddleName:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="MiddleName" required name="MiddleName" placeholder="Enter MiddleName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="LastName">LastName:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="LastName" required name="LastName" placeholder="Enter LastName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="GenderId">GenderId:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="GenderId" required name="GenderId" placeholder="Enter GenderId">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="DepartmentID">DepartmentID:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="DepartmentID" required name="DepartmentID" placeholder="Enter DepartmentID">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="CreateDate">CreateDate:</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="CreateDate" required name="CreateDate" placeholder="Enter CreateDate">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="CreateByID">CreateByID:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="CreateByID" required name="CreateByID" placeholder="Enter CreateByID">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">UpdateDate:</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="UpdateDate" required name="UpdateDate" placeholder="Enter UpdateDate">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="UpdateByID">UpdateByID:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="UpdateByID" required name="UpdateByID" placeholder="Enter UpdateByID">
						</div>
					</div>
					<!-- AC5685 -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<form action="controller1?action=login" method="post"></form>
	<%-- 	<div class="footerboard"><jsp:include page="footer.jsp"></jsp:include></div> --%>
</body>
</html>