package hacker.rank;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class Q44
{
	public static void main(String[] args) throws ParseException
	{
		SimpleDateFormat sdf = new SimpleDateFormat("mmm/dd/yyyy");
		System.out.println(new Date());
		String da = sdf.format(new Date());
		
		System.out.println(da);
		
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		
		System.out.println(date);
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy MMM dd HH:mm:ss");
		Calendar calendar1 = new GregorianCalendar(2013, 0, 31);
		System.out.println(sdf1.format(calendar1.getTime()));
		
		Scanner in = new Scanner(System.in);
		String month = in.next();
		String day = in.next();
		String year = in.next();
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("mmm");
		String d = month + " " + day + " " + year;
		Date dayD = sdf2.parse(d.toString());
		System.out.println(dayD);
		
		SimpleDateFormat sdf3 = new SimpleDateFormat("dd-M-yyyy");
		String dateInString = "31-08-1982";
		Date date12 = sdf3.parse(dateInString);
		System.out.println(date12);
		
		SimpleDateFormat sdf22 = new SimpleDateFormat("E");
		System.out.println(sdf22.format(date12));
		
		SimpleDateFormat sdf21 = new SimpleDateFormat("EEEE");
		System.out.println(sdf21.format(date12).toUpperCase());
	}
}