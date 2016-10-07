package com.javatutorialspoint;

import java.lang.invoke.VolatileCallSite;

import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter.DEFAULT;

public class StringImmutable
{
	public static void main(String[] args)
	{
		String S1 = "abc";
		S1.concat("xyz ");
		System.out.println("S1 is " + S1);
		String S2 = S1.concat("def");
		System.out.println("S2 is " + S2);
		System.out.println("S1 is " + S1);
		testString();
	}
	
	public static void testString()
	{
		String str = "Hello";
		System.out.println("Before String Concat: " + str);
		str.concat("World");
		System.out.println("After String Concat: " + str);
		StringBuffer sb = new StringBuffer("Hello");
		System.out.println("Before StringBuffer Append: " + sb);
		sb.append("World");
		System.out.println("After StringBuffer Append: " + sb);
		System.out.println("After StringBuffer Append: " + sb);
		StringBuilder sa = new StringBuilder(" qwerty");
		sa.append(" dd");
		System.out.println(sa);
		sa.delete(2, 5);
		System.out.println(sa);
		
		String b = "11";
		b.concat(" ok ");
		System.out.println(b);
		System.out.println(b.endsWith("1"));
		
	}
}
