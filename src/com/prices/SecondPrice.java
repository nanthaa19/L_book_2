package com.prices;

import java.util.Date;
import java.util.HashMap;

public class SecondPrice extends Prizes
{
	String name;
	
	private int id;
	private int bid;
	private String digits;
	private String keyword;
	private String number;
	private String district;
	private int createrId;
	private Date entryDate;
	
	public SecondPrice()
	{
		super();
		name = "Second Price";
	}
	
	public SecondPrice(int bid, String digits, String keyword, String number, String district, int createrId, Date entryDate)
	{
		super();
		this.bid = bid;
		this.digits = digits;
		this.keyword = keyword;
		this.number = number;
		this.district = district;
		this.createrId = createrId;
		this.entryDate = entryDate;
	}
	
	public SecondPrice(int id, int bid, String digits, String keyword, String number, String district, int createrId, Date entryDate)
	{
		super();
		this.id = id;
		this.bid = bid;
		this.digits = digits;
		this.keyword = keyword;
		this.number = number;
		this.district = district;
		this.createrId = createrId;
		this.entryDate = entryDate;
	}

	@Override
	String getPrizeName()
	{		
		return name;
	}

	@Override
	short totalNumbersOfPrizes(byte total)
	{		
		return total;
	}

	@Override
	HashMap<Integer, String> priceList()
	{		
		return null;
	}
	
	
	
}
