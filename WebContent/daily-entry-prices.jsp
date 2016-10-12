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
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="my_js/autocompleter.js" type="text/javascript"></script>
<script src="my_js/myquery.js" type="text/javascript"></script>
<script src="my_js/numbersonly.js" type="text/javascript"></script>
<link rel="stylesheet" href="my_css/mysheet.css" />
<link rel="stylesheet" href="my_css/file-1.css">

<title>New-Daily-Entry-Prices</title>
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


	<form action="controller1?action=login" method="post"></form>

	<%-- 	<div class="footerboard"><jsp:include page="pages/footer.jsp"></jsp:include></div> --%>

	<div class="container">
		<div class="row r1"></div>
		<div class="container">
			<div class="headtag">
				<div class="row headtagchild">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row tablerow">
							<table class="myheadtable">
								<thead>
									<tr>
										<th></th>
										<th>Win Win</th>
										<th></th>
										<th></th>
										<th>2016-05-05</th>
										<th></th>
										<th>Kottayam</th>
										<th></th>
										<th>WINWIN - 225</th>
									</tr>
								</thead>
							</table>
						</div>
						<div class="row tablerow" style="height: 10px;"></div>
						<div class="row tablerow">
							<table class="myheadtable">
								<thead>
									<tr>
										<th>1st</th>
										<th>2nd</th>
										<th>3rd</th>
										<th>4th</th>
										<th>5th</th>
										<th>6th</th>
										<th>7th</th>
										<th>8th</th>
										<th>consolation</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>2</td>
										<td>3</td>
										<td>4</td>
										<td>4</td>
										<td>5</td>
										<td>66</td>
										<td>77</td>
										<td>5</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>
			<div class="row xxxx"></div>
			<div>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#i">1st</a></li>
					<li><a data-toggle="tab" href="#ii">2nd</a></li>
					<li><a data-toggle="tab" href="#iii">3rd</a></li>
					<li><a data-toggle="tab" href="#iv">4th</a></li>
					<li><a data-toggle="tab" href="#v">5th</a></li>
					<li><a data-toggle="tab" href="#vi">6th</a></li>
					<li><a data-toggle="tab" href="#vii">7th</a></li>
					<li><a data-toggle="tab" href="#viii">8th</a></li>
					<li><a data-toggle="tab" href="#ix">Consolation</a></li>
					<li><a data-toggle="tab" href="#x">Report</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div id="i" class="tab-pane fade in active">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message1"></span>
							</div>
						</div>
						<div class="row r2">
							<div class="col-sm-1">
								<span><b>First</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly pricebox' name="firstnumber" id="t1" onchange="numberValidation1();checkLength();" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes1" onclick="myBoxes1()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow">
									<span class="boxes1"></span> <span class="boxes1submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="ii" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message2"></span>
							</div>
						</div>
						<div class="row r3">
							<div class="col-sm-1">
								<span><b>Second</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="secondnumber" id="t2" onchange="numberValidation2()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes2" onclick="myBoxes2()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow">
									<span class="boxes2"></span> <span class="boxes2submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>

				<div id="iii" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message3"></span>
							</div>
						</div>
						<div class="row r4">
							<div class="col-sm-1">
								<span><b>Third</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="thirdnumber" id="t3" onchange="numberValidation3()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes3" onclick="myBoxes3()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow">
									<span class="boxes3"></span> <span class="boxes3submit"></span>
								</div>
							</div>

						</div>
						<div class="row r11"></div>
					</form>
				</div>
				<div id="iv" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message4"></span>
							</div>
						</div>
						<div class="row r5">
							<div class="col-sm-1">
								<span><b>Fourth</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="fourthnumber" id="t4" onchange="numberValidation4()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes4" onclick="myBoxes4()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow">
									<span class="boxes4"></span> <span class="boxes4submit"></span>
								</div>
							</div>

						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="v" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message5"></span>
							</div>
						</div>
						<div class="row r6">
							<div class="col-sm-1">
								<span><b>Fifth</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="fifthnumber" id="t5" onchange="numberValidation5()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes5" onclick="myBoxes5()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow" style="border-left: 1px solid #55518a;">
									<span class="boxes5"></span> <span class="boxes5submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="vi" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message6"></span>
							</div>
						</div>
						<div class="row r7">
							<div class="col-sm-1">
								<span><b>Sixth</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="sixthnumber" id="t6" onchange="numberValidation6()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes6" onclick="myBoxes6()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow" style="border-left: 1px solid #AC5685;">
									<span class="boxes6"></span> <span class="boxes6submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="vii" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message7"></span>
							</div>
						</div>
						<div class="row r8">
							<div class="col-sm-1">
								<span><b>Seventh</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="seventhnumber" id="t7" onchange="numberValidation7()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes7" onclick="myBoxes7()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow" style="border-left: 1px solid #55518a;">
									<span class="boxes7"></span> <span class="boxes7submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="viii" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message8"></span>
							</div>
						</div>
						<div class="row r9">
							<div class="col-sm-1">
								<span><b>Eighth</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="eighthnumber" id="t8" onchange="numberValidation8()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes8" onclick="myBoxes8()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow" style="border-left: 1px solid #AC5685;">
									<span class="boxes8"></span> <span class="boxes8submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="ix" class="tab-pane fade">
					<form>
						<div class="row rmessage">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">
								<span class="val-message9"></span>
							</div>
						</div>
						<div class="row r10">
							<div class="col-sm-1">
								<span><b>Consolation</b></span>
							</div>
							<div class="col-sm-2">
								<input type="text" class='form-control numbersonly' name="consolationNumber" id="t9" onchange="numberValidation9()" />
							</div>
							<div class="col-sm-1">
								<button type="button" class="btn btn-primary btn-sm" id="getBoxes9" onclick="myBoxes9()">
									<span class="glyphicon glyphicon-plus"></span>
								</button>
							</div>
							<div class="col-sm-8">
								<div class="row childrow" style="border-left: 1px solid #55518a;">
									<span class="boxes9"></span> <span class="boxes9submit"></span>
								</div>
							</div>
						</div>
						<div class="row r11 "></div>
					</form>
				</div>
				<div id="x" class="tab-pane fade"></div>
				<div class="row r11 "></div>
			</div>
		</div>
	</div>
	<div class="footerassist" style="height: 100px;"></div>
</body>
</html>