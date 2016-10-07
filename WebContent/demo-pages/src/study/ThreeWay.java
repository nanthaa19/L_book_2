package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.activation.DataSource;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class ThreeWay extends HttpServlet implements Servlet
{
	DataSource ds;
	
	private static final long serialVersionUID = 1L;
	ServletConfig config = null;
	
	public void init(ServletConfig config)
	{
		this.config = config;
		System.out.println("servlet is initialized");
	}
	
	public void service(ServletRequest req, ServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.print("<html><body>");
		out.print("<b>hello simple servlet </b>" + req.getParameter("f1") + " " + config);
		out.print(" - " + req.getParameterNames() + "");
		out.print("</body></html>");
	}
	
	public void destroy()
	{
		System.out.println("servlet is destroyed");
	}
	
	public ServletConfig getServletConfig()
	{
		return config;
	}
	
	public String getServletInfo()
	{
		return "copyright 2007-1010";
	}
	
}
