package com.javatutorialspoint;

import com.javatutorialspoint.Q1;

public class Q2 extends Q1
{
	
	public static void main(String[] args)
	{
		int s = 0;
		System.out.println("integer : " + s instanceof String);
		System.out.println(" ************** ");
		
		try
		{
			Q1 q1 = new Q1(); // parent object q1
			Q2 q2 = new Q2(); // child object
			Q1 q3 = new Q2(); // upcasting object
			Q2 q4 = new Q2(); // child object
			
			System.out.println(q1 instanceof Q1);
			System.out.println(q1 instanceof Q2); // checking by downcasting it returns False
			
			System.out.println(q2 instanceof Q1); // checking by upcasting it returns True
			System.out.println(q2 instanceof Q2); // checking by downcasting it returns true
			
			System.out.println(q3 instanceof Q1);
			System.out.println(q3 instanceof Q2);
			
			System.out.println(q4 instanceof Q2);
			System.out.println(q4 instanceof Q1);
			
			System.out.println(q3 instanceof Q1);
			Q2.show(q2);
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		String ss = "0";
		// z:
		// ss = "646554";
		// break z;
	}
	
	public void check()
	{
		System.out.println("casted success");
	}
	
	public static void show(Q1 q1)
	{
		if (q1 instanceof Q2)
		{
			Q2 q = (Q2) q1;
			q.check();
		}
		else
		{
			System.out.println(" not casted ");
		}
	}
}
