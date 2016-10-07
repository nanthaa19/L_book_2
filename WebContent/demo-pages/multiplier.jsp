<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Index</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	function myBoxes1()
    {
	    var count = $("#t1").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class=\"col-xs-2\" ><b>" + i + ".</b><input type='text' class=\"form-control\" value='number "+i+"'></div>";
	    }
	    $(".boxes1").html(x)
    }
    function myBoxes2()
    {
	    var count = $("#t2").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class=\"col-sm-3\"><b>" + i + ".</b><input type='text' class=\"form-control\" value='number "+i+"'></div>";
	    }
	    $(".boxes2").html(x)
    }
    function myBoxes3()
    {
	    var count = $("#t3").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class=\"col-sm-3\"><b>" + i + ".</b><input type='text' value='number "+i+"'></div>";
	    }
	    $(".boxes3").html(x)
    }
    function myBoxes4()
    {
	    var count = $("#t4").val();
	    var i;
	    var x = "";
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class=\"col-sm-3\"><b>" + i + ".</b><input type='text' value='number "+i+"'></div>";
	    }
	    $(".boxes4").html(x)
    }
    function myBoxes5()
    {
	    var count = $("#t5").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class=\"col-sm-3\"><b>" + i + ".</b><input type='text' value='number "+i+"'></div>";
	    }
	    $(".boxes5").html(x)
    }
</script>

</head>
<!-- F5F5F5  #AC5685-->
<body style="background-color: #F5F5F5;">
	<div class="container">
		<div class="row" style="height: 50px;"></div>
		<div class="row">
			<form action="MultiplierController?action=add">

				<div class="row" style="padding: 10px;">
					<div class="col-sm-1">
						<span><b>First</b></span>
					</div>
					<div class="col-sm-2">
						<input type="text" name="number" id="t1" onchange="myBoxes()" />
					</div>
					<div class="col-sm-1">
						<input type="button" class="btn btn-primary btn-xs" id="getBoxes1" value="click" name="ap" onclick="myBoxes1()">
					</div>
					<div class="col-sm-8">
						<div class="row" style="padding: 5px;">
							<span class="boxes1"></span>
						</div>
					</div>

				</div>

				<div class="row" style="padding: 10px;">
					<div class="col-sm-1">
						<span><b>Second</b></span>
					</div>
					<div class="col-sm-2">
						<input type="text" name="number" id="t2" onchange="myBoxes2()" />
					</div>
					<div class="col-sm-1">
						<input type="button" class="btn btn-primary btn-xs" id="getBoxes2" value="click" name="ap" onclick="myBoxes2()">
					</div>
					<div class="col-sm-8">
						<div class="row" style="padding: 5px;">
							<span class="boxes2"></span>
						</div>
					</div>

				</div>

				<div class="row" style="padding: 10px;">
					<div class="col-sm-1">
						<span><b>Third</b></span>
					</div>
					<div class="col-sm-2">
						<input type="text" name="number" id="t3" onchange="myBoxes3()" />
					</div>
					<div class="col-sm-1">
						<input type="button" class="btn btn-primary btn-xs" id="getBoxes3" value="click" name="ap" onclick="myBoxes3()">
					</div>
					<div class="col-sm-8">
						<div class="row" style="padding: 5px;">
							<span class="boxes3"></span>
						</div>
					</div>

				</div>

				<div class="row" style="padding: 10px;">
					<div class="col-sm-1">
						<span><b>Fourth</b></span>
					</div>
					<div class="col-sm-2">
						<input type="text" name="number" id="t4" onchange="myBoxes4()" />
					</div>
					<div class="col-sm-1">
						<input type="button" class="btn btn-primary btn-xs" id="getBoxes4" value="click" name="ap" onclick="myBoxes4()">
					</div>
					<div class="col-sm-8">
						<div class="row" style="padding: 5px;">
							<span class="boxes4"></span>
						</div>
					</div>

				</div>

				<div class="row" style="padding: 10px;">
					<div class="col-sm-1">
						<span><b>Fifth</b></span>
					</div>
					<div class="col-sm-2">
						<input type="text" name="number" id="t5" onchange="myBoxes5()" />
					</div>
					<div class="col-sm-1">
						<b><input type="button" class="btn btn-primary btn-xs" id="getBoxes5" value="click" name="ap" onclick="myBoxes5()"></b>
					</div>
					<div class="col-sm-8">
						<div class="row" style="padding: 5px;">
							<span class="boxes5"></span>
						</div>
					</div>

				</div>

			</form>
		</div>
	</div>
</body>
</html>