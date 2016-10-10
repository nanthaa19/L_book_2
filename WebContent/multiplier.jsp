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

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<script src="my_js/myquery.js" type="text/javascript"></script>
<script type="text/javascript">
	function myBoxes1()
    {
	    var count = $("#t1").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='row' style='padding:5px;'><div class='col-xs-1'><label for='firstprice"+i+"'>"
		            + i
		            + "."
		            + "&nbsp W </label></div><div class='col-xs-1'><input class='form-control' id='firstprice_kw"+i+"' name='firstprice_kw"+i+"' type='text'></div><div class='col-xs-2'><input class='form-control numbersonly' id='firstprice_num"+i+"' name='firstprice_num"+i+"' type='text'></div><div class='col-xs-3'><input type='text' class='form-control' name='firstprice_dis"+i+"'  id='firstprice_dis"+i+"' ></div></div>";

	    }
	    $(".boxes1").html(x);
	    if (count >= 1)
	    {
		    $(".boxes1submit")
		            .html(
		                    "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	    }
    }
    function myBoxes2()
    {
	    var count = $("#t2").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='row' style='padding:5px;'><div class='col-xs-1'><label for='secondprice"+i+"'>"
		            + i
		            + "."
		            + "&nbsp W </label></div><div class='col-xs-1'><input class='form-control' id='secondprice_kw"+i+"' name='secondprice_kw"+i+"' type='text'></div><div class='col-xs-2'><input class='form-control numbersonly' id='secondprice_num"+i+"' name='secondprice_num"+i+"' type='text'></div><div class='col-xs-3'><input type='text' class='form-control' name='secondprice_dis"+i+"'  id='secondprice_dis"+i+"' ></div></div>";

	    }
	    $(".boxes2").html(x);

	    if (count >= 1)
	    {
		    $(".boxes2submit")
		            .html(
		                    "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");

	    }
    }
    function myBoxes3()
    {
	    var count = $("#t3").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='row' style='padding:5px;'><div class='col-xs-1'><label for='thirdprice"+i+"'>"
		            + i
		            + "."
		            + "&nbsp W </label></div><div class='col-xs-1'><input class='form-control' id='thirdprice_kw"+i+"' name='thirdprice_kw"+i+"' type='text'></div><div class='col-xs-2'><input class='form-control numbersonly' id='thirdprice_num"+i+"' name='thirdprice_num"+i+"' type='text'></div><div class='col-xs-3'><input type='text' class='form-control' name='thirdprice_dis"+i+"'  id='thirdprice_dis"+i+"' ></div></div>";

	    }
	    $(".boxes3").html(x);
	    if (count >= 1)
	    {
		    $(".boxes3submit")
		            .html(
		                    "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");

	    }
    }
    function myBoxes4()
    {
	    var count = $("#t4").val();
	    var i;
	    var x = "";
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='col-xs-2 form-group'>"
		            + "<label for='fourthprice"+i+"'>"
		            + i
		            + "."
		            + "</label><input type='text' class='form-control numbersonly' id='fourthprice"+i+" ' name='fourthprice"+i+"'>"
		            + "</div>";
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
		    x += "<div class='col-xs-2 form-group'>"
		            + "<label for='fifthprice"+i+"'>"
		            + i
		            + "."
		            + "</label><input type='text' class='form-control numbersonly' id='fifthprice"+i+" ' name='fifthprice"+i+"'>"
		            + "</div>";
	    }
	    $(".boxes5").html(x)
    }

    function myBoxes6()
    {
	    var count = $("#t6").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='col-xs-2 form-group'>"
		            + "<label for='sixthprice"+i+"'>"
		            + i
		            + "."
		            + "</label><input type='text' class='form-control numbersonly' id='sixthprice"+i+" ' name='sixthprice"+i+"'>"
		            + "</div>";
	    }
	    $(".boxes6").html(x)
    }

    function myBoxes7()
    {
	    var count = $("#t7").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='col-xs-2 form-group'>"
		            + "<label for='seventhprice"+i+"'>"
		            + i
		            + "."
		            + "</label><input type='text' class='form-control numbersonly' id='seventhprice"+i+" ' name='seventhprice"+i+"'>"
		            + "</div>";
	    }
	    $(".boxes7").html(x)
    }

    function myBoxes8()
    {
	    var count = $("#t8").val();
	    var i;
	    var x = '';
	    for (i = 1; i <= count; i++)
	    {
		    x += "<div class='col-xs-2 form-group'>"
		            + "<label for='eighthprice"+i+"'>"
		            + i
		            + "."
		            + "</label><input type='text' class='form-control numbersonly' id='eighthprice"+i+" ' name='eighthprice"+i+"'>"
		            + "</div>";
	    }
	    $(".boxes8").html(x)
    }
</script>
</head>
<!-- F5F5F5  #AC5685-->
<body style="background-color: #F5F5F5;">
	<div class="container">
		<div class="row" style="height: 50px;"></div>
		<div class="row">
			<form action="MultiplierController?action=add"></form>
			<form>
				<input type="text" name="fruits" id="fruits" />
			</form>
			<div class="row" style="padding: 10px; border-left: 6px solid violet; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>First</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t1" onchange="myBoxes()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes1" name="ap" onclick="myBoxes1()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes1"></span> <span class="boxes1submit"></span>
					</div>
				</div>

			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid indigo; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Second</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t2" onchange="myBoxes2()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes2" name="ap" onclick="myBoxes2()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
					<!-- 						<input type="button" class="btn btn-primary btn-xs" id="getBoxes2" value="click" name="ap" onclick="myBoxes2()"> -->
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes2"></span> <span class="boxes2submit"></span>
					</div>
				</div>

			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid blue; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Third</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t3" onchange="myBoxes3()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes3" name="ap" onclick="myBoxes3()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes3"></span> <span class="boxes3submit"></span>
					</div>
				</div>

			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid green; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Fourth</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t4" onchange="myBoxes4()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes4" name="ap" onclick="myBoxes4()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes4"></span>
					</div>
				</div>

			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid yellow; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Fifth</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t5" onchange="myBoxes5()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes5" name="ap" onclick="myBoxes5()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes5"></span>
					</div>
				</div>

			</div>


			<div class="row" style="padding: 10px; border-left: 6px solid orange; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Sixth</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t6" onchange="myBoxes5()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes6" name="ap" onclick="myBoxes6()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes6"></span>
					</div>
				</div>
			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid red; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Seventh</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t7" onchange="myBoxes5()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes7" name="ap" onclick="myBoxes7()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes7"></span>
					</div>
				</div>

			</div>

			<div class="row" style="padding: 10px; border-left: 6px solid black; border-bottom: 1px solid grey; background-color: lightgrey;">
				<div class="col-sm-1">
					<span><b>Eighth</b></span>
				</div>
				<div class="col-sm-2">
					<input type="text" class='form-control numbersonly' name="number" id="t8" onchange="myBoxes8()" />
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary btn-sm" id="getBoxes8" name="ap" onclick="myBoxes8()">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
				<div class="col-sm-8">
					<div class="row" style="padding: 5px;">
						<span class="boxes8"></span>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>