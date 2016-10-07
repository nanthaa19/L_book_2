package hacker.rank;

import java.util.Scanner;

public class Q66
{
	
	public static void main(String[] args)
	{
		Scanner in = new Scanner(System.in);
		int a = 1, b = 2;
		System.out.println((a + b) + "\n" + (a - b) + "\n" + (a * b) + "\n" + (a / b) + "\n" + (a > b ? a : b));
		while (in.hasNextInt())
		{
			int n = in.nextInt();
			int p = in.nextInt();
			MyCalculator1 my_calculator = new MyCalculator1();
			try
			{
				System.out.println(my_calculator.power(n, p, my_calculator));
			}
			catch (Exception e)
			{
				System.out.println(e);
			}
		}
	}
	
}

class MyCalculator1
{
	
	int power(int a, int b, Object o) throws Exception
	{
		int result = 0;
		Class[] theInterfaces = o.getClass().getInterfaces();
		System.out.println(theInterfaces);
		if (a < 0 || b < 0)
		{
			throw new Exception("n and p should be non-negative");
		}
		else
		{
			
			result = (int) Math.pow(a, b);
		}
		return result;
	}
	
}