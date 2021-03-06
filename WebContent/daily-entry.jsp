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
<title>New-Daily-Entry</title>

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
					<h4>New Daily Entry</h4>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</div>
	</div>
	<div class="container" style="height: 150px;">
		<div class="row formcontainer">
<!-- 			<div class="col-sm-1"></div> -->
<!-- 			<div class="col-sm-12"> -->
				<form class="form-horizontal" action="" method="post">
					<div class="col-sm-6">
						<div class="form-group">
							<label class="control-label col-sm-4" for="field1">Date :</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="field1" name="name" required placeholder="Enter Date">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field2">BookName:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="field2" required name="day" placeholder="Enter Book Name">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field3">EpisodeId:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="field3" required name="keyword" placeholder="Enter Episode-Id">
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="control-label col-sm-4" for="field4">First:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="field4" required name="series" placeholder="Enter No.of.First Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field5">Second:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="field5" required name="district" placeholder="Enter No.of.Second Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field6">Third:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="field6" required name="dofr" placeholder="Enter No.of.Third Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Fourth:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Fourth Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Fifth:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Fifth Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Sixth:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Sixth Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Seventh:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Seventh Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Eighth:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Eighth Prizes">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="field7">Consolation:</label>
							<div class="col-sm-4">
								<input type="date" class="form-control" id="field7" required name="type" placeholder="Enter No.of.Consolation Prizes">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-6 col-sm-4">
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
<!-- 	</div> -->

	<form action="controller1?action=login" method="post"></form>
	<%-- 	<div class="footerboard"><jsp:include page="footer.jsp"></jsp:include></div> --%>
</body>
</html>