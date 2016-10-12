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
<title>new-employee</title>

<script src="my_js/myquery.js" type="text/javascript"></script>
<script src="my_js/numbersonly.js" type="text/javascript"></script>
<link rel="stylesheet" href="my_css/mysheet.css" />
<link rel="stylesheet" href="my_css/file-1.css" />

</head>
<body>
<body>
	<div class="container row">
		<nav class="navbar navbar-default navbar-fixed-top colormaroon">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavigationbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp" style="color: white;"><span class="icon-bar"></span><span class="titlename">KL Libro</span></a>
				</div>
				<jsp:include page="pages/navigation.jsp"></jsp:include>
			</div>
		</nav>
	</div>
	<div class="container newuser ">
		<div class="row" style="margin-bottom: 25px;">
			<div class="col-sm-12">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h4>Create New Employee</h4>
				</div>
				<div class="col-sm-4"></div>
			</div>

		</div>
	</div>
	<div class="container" style="height: 150px;">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal" action="OracleDataBase?action=insert" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="field1">FirstName :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field1" name="firstname" required placeholder="Enter Employee FirstName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field2">LastName:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field2" required name="lastname" placeholder="Enter Employee LastName">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field3">Password:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field3" required name="password" placeholder="Enter Password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field4">Re-Enter Password:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field4" required name="repassword" placeholder="Re-Enter Password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field5">MailId:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field5" required name="emailid" placeholder="Enter EmailId">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field6">Date of Birth:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="field6" required name="dob" placeholder="Enter DateOfBirth">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="field7">Designation:</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="field7" required name="designation" placeholder="Enter Desigantion">
						</div>
					</div>
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