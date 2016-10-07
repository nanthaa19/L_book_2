package com.prices;

import java.util.Date;
import java.util.HashMap;

public class FirstPrice extends Prizes
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
	
	public FirstPrice()
	{
		super();
		name = "first price";
	}
	
	public FirstPrice(int bid, String digits, String keyword, String number, String district, int createrId, Date entryDate)
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
	
	public FirstPrice(int id, int bid, String digits, String keyword, String number, String district, int createrId, Date entryDate)
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
	
	public int getId()
	{
		return id;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public int getBid()
	{
		return bid;
	}
	
	public void setBid(int bid)
	{
		this.bid = bid;
	}
	
	public String getDigits()
	{
		return digits;
	}
	
	public void setDigits(String digits)
	{
		this.digits = digits;
	}
	
	public String getKeyword()
	{
		return keyword;
	}
	
	public void setKeyword(String keyword)
	{
		this.keyword = keyword;
	}
	
	public String getNumber()
	{
		return number;
	}
	
	public void setNumber(String number)
	{
		this.number = number;
	}
	
	public String getDistrict()
	{
		return district;
	}
	
	public void setDistrict(String district)
	{
		this.district = district;
	}
	
	public int getCreaterId()
	{
		return createrId;
	}
	
	public void setCreaterId(int createrId)
	{
		this.createrId = createrId;
	}
	
	public Date getEntryDate()
	{
		return entryDate;
	}
	
	public void setEntryDate(Date entryDate)
	{
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
		return 0;
	}
	
	@Override
	HashMap<Integer, String> priceList()
	{
		return null;
	}
	
}
