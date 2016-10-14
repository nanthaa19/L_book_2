/*$(document).ready(function()
{
	$(function()
	{
		$(".searchcity").autocomplete({
			source : function(request, response)
			{
				$.ajax({
				    url : "SearchController",
				    type : "POST",
				    data : {
					    term : request.term
				    },
				    dataType : "json",
				    success : function(data)
				    {
					    response(data);
				    }
				});
			}
		});
	});
});*/

$(document).ready(function()
{
	$(function()
	{
		$('.searchcity').autocomplete({
			source : function(request, response)
			{
				$.ajax({
				    url : 'SearchController',
				    type : 'POST',
				    data : {
					    term : request.term
				    },
				    dataType : 'json',
				    success : function(data)
				    {
					    response(data);
				    }
				});
			}
		});
	});
});
