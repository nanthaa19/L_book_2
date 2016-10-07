package com.javatutorialspoint;

import static java.lang.Math.sqrt;

public class Q3
{
	public static void main(String[] args)
	{
		System.out.println(Math.sqrt(144));
		System.out.println(sqrt(4));
		System.out.println(sqrt(66));
		
		System.out.println(Math.round(123.02));
		System.out.println(Math.round(123.49));
		
		String a = "12";
		String b = "12";
		
		System.out.println(a == b);
		System.out.println(a.equals(b));
		System.out.println(a == "1");
		
		String s11 = new String("abc");
		String s2 = new String("abc");
		StringBuffer sb1 = new StringBuffer("455");
		StringBuffer sb2 = new StringBuffer("455");
		
		System.out.println("-----" + (s11 == s2));
		System.out.println(foo(s2) == foo(s11));
		System.out.println(foo(sb1).equals(foo(sb2)));		
	}
	
	public static String foo(String s)
	{
		System.out.println("String");
		return s;
	}
	
	public static StringBuffer foo(StringBuffer sb)
	{
		System.out.println("StringBuffer");
		return sb;
	}
	
}
