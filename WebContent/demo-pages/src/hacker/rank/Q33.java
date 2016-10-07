package hacker.rank;

import java.util.Scanner;

public class Q33
{
	static Scanner input = new Scanner(System.in);
	static boolean flag = true;
	static int B = input.nextInt();
	static int H = input.nextInt();
	
	static
	{
		try
		{
			if (B <= 0 || H <= 0)
			{
				flag = false;
				throw new Exception("Breadth and height must be positive");
			}
			else if (B >= 0 && H >= 0)
			{
				int mul = B * H;
//				System.out.print(mul);
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}
	
	public static void main(String[] args)
	{
//		String n = "" + 8;
//		System.out.println(n);
//		fun2();
	}
	
	private static void fun2() throws RuntimeException
	{
		int f = 2134;
		try
		{
			if (f == Integer.parseInt("2134"))
			{
				throw new Exception("cannot open");
			}
			else
			{
				throw new NullPointerException("couldnot open");
			}
		}
		catch (Exception ex)
		{
			System.out.println(ex);
		}
	}
}
