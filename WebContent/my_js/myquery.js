$(document).ready(
        function()
        {
	        $('.numbersonly').keydown(
	                function(event)
	                {
		                if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27
		                        || event.keyCode == 13 || (event.keyCode == 65 && event.ctrlKey === true)
		                        || (event.keyCode >= 35 && event.keyCode <= 39))
		                {
			                return;
		                }
		                else
		                {
			                if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57)
			                        && (event.keyCode < 96 || event.keyCode > 105))
			                {
				                event.preventDefault();
			                }
		                }
	                });

        });

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