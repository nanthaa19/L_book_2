package com.javatutorialspoint;

public class Q1
{
	public static void main(String[] args)
	{
		int Output = 10;
		boolean b1 = false;
		if ((b1 == false) && ((Output += 10) == 20))
		{
			System.out.println("We are equal " + Output++);
		}
		else
		{
			System.out.println("Not equal! " + Output);
		}
		
		int arr[] = new int[] { 1, 2, 3 };
		System.out.println(--arr[1]);
		
		System.out.println(arr.length);
		
		short $_ds = 6555;
		
		int j = 5;
		for (int i = 0; i < j; i++)
		{
			System.out.println("---" + j--);
			System.out.println("---" + j--);
			System.out.println(--j + "----");
			
			if (i < j--)
			{
				System.out.println((i * j) + " / ");
			}
		}
		System.out.println(3 * 4);
		System.out.println(2 << 3);
		char c6 = '\uface';
		System.out.println(c6);
	}
}
