package hacker.rank;

import java.util.Scanner;

public class Q22
{
	
	public static void main(String[] args)
	{
		Scanner in = new Scanner(System.in);
		int N = in.nextInt();
		
		if (N > 1 && N < 21)
		{
			for (int i = 1; i <= 10; i++)
			{
				System.out.println(N + " * " + i + " = " + N * i);
			}
		}
	}
	
}
