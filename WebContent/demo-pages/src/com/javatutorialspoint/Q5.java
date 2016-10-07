package com.javatutorialspoint;

public class Q5
{
	static int a = 214;
	static int cube(int x)
	{
		System.out.print(a+" ");
		System.out.print("integer value - ");
		return x * x * x;
	}
	
	int cube(double xx)
	{
		System.out.print(a+" ");
		System.out.print("double value - ");
		return (int) (xx * xx * xx);
	}

	public static void main(String args[])
	{
		int result = Q5.cube(5);
		System.out.println(result);
		System.out.println(Q5.cube(8));
		
		int result1 = new Q5().cube((double) 5);
		System.out.println(result1);
		System.out.println(new Q5().cube((double) 8));
		
		new Q5();
		int result11 = Q5.cube(5);
		System.out.println(result11);
		System.out.println(Q5.cube(8));
		
		int aq = 12;
//		new Q5().main(args).aq = 1;
		System.out.println("non static member " +new Q5().a);		
		System.out.println("local variable " + aq);
		
	}
}
