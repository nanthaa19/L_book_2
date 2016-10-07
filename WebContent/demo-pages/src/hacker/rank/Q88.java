package hacker.rank;

import java.math.BigInteger;

public class Q88
{
	static BigInteger a1 = BigInteger.TEN;
	
	public static void main(String[] args)
	{
		System.out.println(a1);
		// System.out.println(new eu_p005_sol().run());
	}
	
	public String run()
	{
		BigInteger allLcm = BigInteger.ONE;
		for (int i = 1; i <= 20; i++)
			allLcm = lcm(BigInteger.valueOf(i), allLcm);
		return allLcm.toString();
	}
	
	private static BigInteger lcm(BigInteger x, BigInteger y)
	{
		return x.divide(x.gcd(y)).multiply(y);
	}
	
}
