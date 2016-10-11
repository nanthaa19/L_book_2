function numberValidation1()
{
	var count1 = $("#t1").val();
	if (count1 > 10)
	{
		$(".val-message1").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message1").html("");
	}
}

function numberValidation2()
{
	var count1 = $("#t2").val();
	if (count1 > 20)
	{
		$(".val-message2").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message2").html("");
	}
}

function numberValidation3()
{
	var count1 = $("#t3").val();
	if (count1 > 30)
	{
		$(".val-message3").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message3").html("");
	}
}

function numberValidation4()
{
	var count1 = $("#t4").val();
	if (count1 > 40)
	{
		$(".val-message4").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message4").html("");
	}
}

function numberValidation5()
{
	var count1 = $("#t5").val();
	if (count1 > 100)
	{
		$(".val-message5").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message5").html("");
	}
}

function numberValidation6()
{
	var count1 = $("#t6").val();
	if (count1 > 120)
	{
		$(".val-message6").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message6").html("");
	}
}

function numberValidation7()
{
	var count1 = $("#t7").val();
	if (count1 > 150)
	{
		$(".val-message7").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message7").html("");
	}
}

function numberValidation8()
{
	var count1 = $("#t8").val();
	if (count1 > 150)
	{
		$(".val-message8").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message8").html("");
	}
}

function numberValidation9()
{
	var count1 = $("#t9").val();
	if (count1 > 50)
	{
		$(".val-message9").html("<p style='color:#AC5685;'>Enter the correct value</p>");
	}
	else
	{
		$(".val-message9").html("");
	}
}

function myBoxes1()
{
	var count = $("#t1").val();
	var i;
	var x = '';

	for (i = 1; i <= count; i++)
	{
		x += "<div class='row' style='padding:5px; border-left: 1px solid #55518a;'><div class='col-xs-1'><label for='firstprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + " </label></div><div class='col-xs-1'><input class='form-control' style='padding:4px;' id='firstprice_kw"
		        + i
		        + "' name='firstprice_kw"
		        + i
		        + "' type='text'></div><div class='col-xs-2'><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='firstprice_num"
		        + i
		        + "' name='firstprice_num"
		        + i
		        + "'></div><div class='col-xs-3'><input type='text' class='form-control' name='firstprice_dis"
		        + i + "'  id='firstprice_dis" + i + "' ></div></div>";

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
		x += "<div class='row' style='padding:5px; border-left: 1px solid #AC5685;'><div class='col-xs-1'><label for='secondprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + " </label></div><div class='col-xs-1'><input class='form-control' style='padding:4px;' id='secondprice_kw"
		        + i
		        + "' name='secondprice_kw"
		        + i
		        + "' type='text'></div><div class='col-xs-2'><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='secondprice_num"
		        + i
		        + "' name='secondprice_num"
		        + i
		        + "'></div><div class='col-xs-3'><input type='text' class='form-control' name='secondprice_dis"
		        + i + "'  id='secondprice_dis" + i + "' ></div></div>";

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
		x += "<div class='row' style='padding:5px; border-left: 1px solid #55518a;'><div class='col-xs-1'><label for='thirdprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + " </label></div><div class='col-xs-1'><input class='form-control' style='padding:4px;' id='thirdprice_kw"
		        + i
		        + "' name='thirdprice_kw"
		        + i
		        + "' type='text'></div><div class='col-xs-2'><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='thirdprice_num"
		        + i
		        + "' name='thirdprice_num"
		        + i
		        + "'></div><div class='col-xs-3'><input type='text' class='form-control' name='thirdprice_dis"
		        + i + "'  id='thirdprice_dis" + i + "' ></div></div>";

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
		        + "<label for='fourthprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + "</label><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='fourthprice"
		        + i + " ' name='fourthprice" + i + "'>" + "</div>";
	}
	$(".boxes4").html(x)
	if (count >= 1)
	{
		$(".boxes4submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}
}
function myBoxes5()
{
	var count = $("#t5").val();
	var i;
	var x = '';
	for (i = 1; i <= count; i++)
	{
		x += "<div class='col-xs-2 form-group'>"
		        + "<label for='fifthprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + "</label><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='fifthprice"
		        + i + " ' name='fifthprice" + i + "'>" + "</div>";
	}
	$(".boxes5").html(x)
	if (count >= 1)
	{
		$(".boxes5submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}
}

function myBoxes6()
{
	var count = $("#t6").val();
	var i;
	var x = '';
	for (i = 1; i <= count; i++)
	{
		x += "<div class='col-xs-2 form-group'>"
		        + "<label for='sixthprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + "</label><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='sixthprice"
		        + i + " ' name='sixthprice" + i + "'>" + "</div>";
	}
	$(".boxes6").html(x)
	if (count >= 1)
	{
		$(".boxes6submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}
}

function myBoxes7()
{
	var count = $("#t7").val();
	var i;
	var x = '';
	for (i = 1; i <= count; i++)
	{
		x += "<div class='col-xs-2 form-group'>"
		        + "<label for='seventhprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + "</label><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='seventhprice"
		        + i + " ' name='seventhprice" + i + "'>" + "</div>";
	}
	$(".boxes7").html(x)
	if (count >= 1)
	{
		$(".boxes7submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}
}

function myBoxes8()
{
	var count = $("#t8").val();
	var i;
	var x = '';
	for (i = 1; i <= count; i++)
	{
		x += "<div class='col-xs-2 form-group'>"
		        + "<label for='eighthprice"
		        + i
		        + "'>"
		        + i
		        + "."
		        + "</label><input type='text'onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='eighthprice"
		        + i + " ' name='eighthprice" + i + "'>" + "</div>";
	}
	$(".boxes8").html(x)
	if (count >= 1)
	{
		$(".boxes8submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}
}

function myBoxes9()
{
	var count = $("#t9").val();
	var i;
	var x = '';

	for (i = 1; i <= count; i++)
	{
		x += "<div class='row' style='padding:5px;'><div class='col-xs-1'><label for='consolation"
		        + i
		        + "'>"
		        + i
		        + "."
		        + " </label></div><div class='col-xs-1'><input class='form-control' style='padding:4px;' id='consolation_kw"
		        + i
		        + "' name='firstprice_kw"
		        + i
		        + "' type='text'></div><div class='col-xs-2'><input type='text' onkeypress = 'return isNumber(event)' class='form-control numbersonly' id='consolation_num"
		        + i
		        + "' name='consolation_num"
		        + i
		        + "'></div><div class='col-xs-3'><input type='text' class='form-control' name='consolation_dis"
		        + i + "'  id='consolation_dis" + i + "' ></div></div>";

	}
	$(".boxes9").html(x);
	if (count >= 1)
	{
		$(".boxes9submit")
		        .html(
		                "<div class='row' style='padding:5px;'><div class='col-xs-10'></div> <div class='col-xs-2'><input type='submit' value='submit' class='btn btn-primary'></div></div>");
	}

}

/*
 * list of fruit names should go in this list. This is the source of the auto
 * complete which will be populated in the text box
 */
var data = [ "Apple", "Orange", "Pineapple", "Strawberry", "Mango" ];

/*
 * jQuery ready function. Specify a function to execute when the DOM is fully
 * loaded.
 */
$(document).ready(

/* This is the function that will get executed after the DOM is fully loaded */
function()
{

	/* binding the text box with the jQuery Auto complete function. */
	$("#fruits").autocomplete({
	    /*
		 * Source refers to the list of fruits that are available in the auto
		 * complete list.
		 */
	    source : data,
	    /*
		 * auto focus true means, the first item in the auto complete list is
		 * selected by default. therefore when the user hits enter, it will be
		 * loaded in the textbox
		 */
	    autoFocus : true,

	});
}

);

function checkLength()
{
	var textbox = $(".pricebox").val();
	if (textbox.value.length <= 4 && textbox.value.length >= 2)
	{
		alert("success");
	}
	else
	{
		alert("make sure the input is between 5-10 characters long")
	}
}