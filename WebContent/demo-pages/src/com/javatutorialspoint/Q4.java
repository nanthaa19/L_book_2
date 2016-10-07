package com.javatutorialspoint;

public class Q4 
{
	 static int count = 100;
	  public void increment()
	  {
	     count++;
	  }
	  public static void main(String []args)
	  {
	     Q4 b1 = new Q4();
	     b1.increment();
	     Q4 b2 = new Q4();
	     b2.increment();
	     b2.increment();
	     System.out.println(b2.count); 
	     System.out.println(b1.count);
	     System.out.println(b1.count);
	  
	    // b1.getName();
	     b1.display();
	     b2.getName();
	     b2.display();
	     
         Q4 t = new Q4();         
         Q4 ts=null;
         
         String name = new String();
         name = null;
        // ts=null;
        // t=null;
        // t.getName();
         System.gc();     
	  }
	  public void finalize()
      {
		  System.out.println("Garbage Collected");
      }
	     	  
	  public void getName()
	  {
		  System.out.println("Std");
	  }

	  public void display()
	  {
		  getName();
		  System.out.println();
	  }  
}
