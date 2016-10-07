package study;

import java.util.Scanner;

//Program to find the critical points of f(x,y)=x^3-xy-x+xy^3-y^4
public class NewTons
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		
		// Get the initial point (x,y) as command-line parameters
		double x = sc.nextDouble(); // Initial x value
		double y = sc.nextDouble(); // Initial y value
		System.out.println("Initial point: (" + x + "," + y + ")");
		// Go through 100 iterations of Newton's algorithm
		for (int n = 1; n <= 100; n++)
		{
			double D = fxx(x, y) * fyy(x, y) - Math.pow(fxy(x, y), 2);
			double xn = x;
			double yn = y; // The current x and y values
			if (D == 0)
			{ // We can not divide by 0
				System.out.println("Error: D = 0 at iteration n = " + n);
				System.exit(0); // End the program
			}
			else
			{ // Calculate the new values for x and y
				x = xn - (fyy(xn, yn) * fx(xn, yn) - fxy(xn, yn) * fy(xn, yn)) / D;
				y = yn - (fxx(xn, yn) * fy(xn, yn) - fxy(xn, yn) * fx(xn, yn)) / D;
				System.out.println("n = " + n + ": (" + x + "," + y + ")");
			}
		}
	}
	
	// Below are the parts specific to the function f
	// The first partial derivative of f wrt x: 3x^2-y-1+y^3
	public static double fx(double x, double y)
	{
		return 3 * Math.pow(x, 2) - y - 1 + Math.pow(y, 3);
	}
	
	// The first partial derivative of f wrt y: -x+3xy^2-4y^3
	public static double fy(double x, double y)
	{
		return -x + 3 * x * Math.pow(y, 2) - 4 * Math.pow(y, 3);
	}
	
	// The second partial derivative of f wrt x: 6x
	public static double fxx(double x, double y)
	{
		return 6 * x;
	}
	
	// The second partial derivative of f wrt y: 6xy-12y^2
	public static double fyy(double x, double y)
	{
		return 6 * x * y - 12 * Math.pow(y, 2);
	}
	
	// The mixed second partial derivative of f wrt x and y: -1+3y^2
	public static double fxy(double x, double y)
	{
		return -1 + 3 * Math.pow(y, 2);
	}
}

// KX 783486