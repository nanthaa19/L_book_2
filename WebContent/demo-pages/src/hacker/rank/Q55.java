package hacker.rank;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Q55
{
	// Exception Handling
	public static void main(String[] args)
	{
		Scanner in = new Scanner(System.in);
		
		try
		{
			int x = in.nextInt();
			int y = in.nextInt();
			System.out.println(x / y);
			
		}
		catch (ArithmeticException ex1)
		{
			System.out.println(ex1);
		}
		catch (InputMismatchException e)
		{
			System.out.println(e);
		}
		
	}
	
}
