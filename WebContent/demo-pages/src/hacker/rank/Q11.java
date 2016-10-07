package hacker.rank;

import java.util.Scanner;

public class Q11
{
	
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		String ans = "";
		if (n > 0 && n < 100)
		{
			if (n <= 20)
			{
				if (n % 2 == 1)
				{
					ans = "Weird";
				}
				else if (n % 2 == 0)
				{
					if (n >= 2 && n <= 5)
					{
						ans = "Not Weird";
					}
					else if (n >= 6 && n <= 20)
					{
						ans = "Weird";
					}
					else
					{
						ans = "Not Weird";
					}
				}
			}
			else if (n > 20)
			{
				ans = "Not Weird";
			}
			
		}
		
		else
		{
			ans = "Not Weird";
		}
		System.out.println(ans);
		
	}
	
}
