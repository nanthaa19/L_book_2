$(document).ready(
        function()
        {
	        $(".numbersonly").keydown(
	                function(event)
	                {
		                if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9
		                        || event.keyCode == 27 || event.keyCode == 13
		                        || (event.keyCode == 65 && event.ctrlKey === true)
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

function isNumber(evt)
{
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57))
	{
		return false;
	}
	return true;
}
