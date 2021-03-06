<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">


<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<!-- <script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script> -->
<!-- <script src="JS/jquery.autocomplete.js"></script> -->

<script src="my_js/myquery.js" type="text/javascript"></script>
<script src="my_js/numbersonly.js" type="text/javascript"></script>

<link rel="stylesheet" href="my_css/mysheet.css" />
<link rel="stylesheet" href="my_css/file-1.css" />

<title>Demo Login</title>
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
					<a class="navbar-brand" href="index.jsp"><span class="icon-bar"></span><span class="titlename">KL Libro</span></a>
				</div>
				<jsp:include page="pages/navigation.jsp"></jsp:include>
			</div>
		</nav>
	</div>
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-sm-12">
				<form class="form-horizontal" action="AdminController?action=register" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="UserName">UserName :</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="UserName" name="UserName" required placeholder="Enter UserName or Mail-ID">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Password">Password:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="Password" name="Password" required placeholder="Enter Password">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="search">City:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control searchcity" id="search" name="search" required placeholder="Search City Name">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="search1">City:</label>
						<div class="col-sm-4">
							<input type="text" class="form-control searchcity" id="search1" name="search" required placeholder="Search City Name">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</div>

					<div class="form-group">
						<label for="something"> Input "Something": <input id="something" list="somethingelse" class="form-control"> <datalist
								id="somethingelse">
								<option value="Something"></option>
								<option value="Something Else"></option>
								<option value="Another One"></option>
								<option value="Alpha"></option>
								<option value="Bravo"></option>
								<option value="Charlie"></option>
								<option value="Delta"></option>
								<option value="Echo"></option>
								<option value="Foxtrot"></option>
								<option value="Gamma"></option>
							</datalist>
						</label>
					</div>


					<input id='something' list='cityName' class='form-control'>
					<datalist id='cityName'>
						<option value='Alappuzha'></option>
						<option value='Ernakulam'></option>
						<option value='Idukki'></option>
						<option value='Kannur'></option>
						<option value='Kasaragod'></option>
						<option value='Kollam'></option>
						<option value='Kottayam'></option>
						<option value='Kozhikode'></option>
						<option value='Malappuram'></option>
						<option value='Palakkad'></option>
						<option value='Pathanamthitta'></option>
						<option value='Thiruvananthapuram'></option>
						<option value='Thrissur'></option>
						<option value='Wayanad'></option>
					</datalist>
				</form>
			</div>
		</div>
	</div>

	<form action="controller1?action=login" method="post"></form>

	<%-- 	<div class="footerboard"><jsp:include page="footer.jsp"></jsp:include></div> --%>

</body>
<script src="my_js/autocompleter.js" type="text/javascript"></script>
</html>