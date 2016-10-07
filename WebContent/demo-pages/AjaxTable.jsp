<%@ page import="java.sql.*"%>

<%
	int n = Integer.parseInt(request.getParameter("val"));
	
	try
	{
		out.print("You entered " + n + "<br>");
		if (n > 0)
		{
			for (int i = 1; i <= 10; i++)
			{
				out.print(i * n + "<br>");
			}
		}
		else
		{
			out.print("Please enter correct number");
		}
	}
	catch (Exception ex)
	{
		out.println(ex);
	}
	
	
	/* int c = Integer.parseInt(request.getParameter("value2"));
	
	out.print("The value is "+(n)); */
			
%>