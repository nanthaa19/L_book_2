package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MultiplierController")
public class MultiplierController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	public MultiplierController()
	{
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
		
		String action = request.getParameter("action");
		
		doPostAction(action, request, response);
	}
	
	private void doPostAction(String action, HttpServletRequest request, HttpServletResponse response)
	{
		if (action.equalsIgnoreCase("add"))
		{
			
		}
		else if (action.equalsIgnoreCase("delete"))
		{
			
		}
		else if (action.equalsIgnoreCase("update"))
		{
			
		}
	}
}
