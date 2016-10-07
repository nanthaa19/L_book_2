package com.javatutorialspoint;

public class Outer$Inner
{
	int data = 101;
	
	Outer$Inner asd()
	{
		return this;
	}
	
	void methodOne()
	{
		class western
		{
			void msg()
			{
				System.out.println(data);
				try
				{
					int a[] = { 0, 2, 1 };
					System.out.println(a[1]);
					int f = 50 / 10;
					System.out.println(f + " " + a[1]);
				}
				catch (ArrayIndexOutOfBoundsException ec)
				{
					System.out.println(ec + " find that");
				}
				catch (ArrayStoreException ex)
				{
					System.out.println(ex + " ***");
				}
				catch (Exception ex)
				{
					System.out.println(ex);
				}
				
				try
				{
					try
					{
						System.out.println("going to divide");
						int b = 39 / 0;
					}
					catch (ArithmeticException e)
					{
						System.out.println(e);
					}
					
					try
					{
						int a[] = new int[5];
						a[5] = 4;
					}
					catch (Exception e)
					{
						System.out.println(e);
					}
					
					System.out.println("other statement");
				}
				catch (Exception e)
				{
					System.out.println("handeled");
				}
				System.out.println("normal flow..");
			}
		}
		western ws = new western();
		ws.msg();
	}
	
	public static void main(String[] args)
	{
		methodTwo mT = new methodTwo();
		mT.thirdMethod();
	}
}

class methodTwo
{
	Outer$Inner asq = new Outer$Inner();
	
	public void thirdMethod()
	{
		asq.methodOne();
	}
}