package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abstractFactory.org.DBConnectionAjax;
import com.google.gson.Gson;

public class SearchController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	public SearchController()
	{
		super();
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("application/json");
		try
		{
			String term = request.getParameter("term");
			System.out.println("Data from ajax call " + term);
			
			ArrayList<String> list = DBConnectionAjax.getCityNameAjax(term);
			
			String searchList = new Gson().toJson(list);
			
			System.out.println(list);
			response.getWriter().write(searchList);
		}
		catch (Exception e)
		{
			System.err.println(e.getMessage());
		}
		
	}
	
}