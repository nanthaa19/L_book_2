package com.abstractFactory.org;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnectionAjax
{
	static Connection con = DataBaseEntity.getConnection();
	
	public static ArrayList<String> getCityNameAjax(String cityName)
	{
		ArrayList<String> list = new ArrayList<String>();
		PreparedStatement ps = null;
		String data;
		try
		{
			ps = con.prepareStatement("SELECT * FROM districts WHERE dname LIKE ?");
			ps.setString(1, cityName + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next())
			{
				data = rs.getString("dname");
				list.add(data);
			}
		}
		catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	public static void main(String[] args)
	{
		System.out.println(getCityNameAjax("k"));
	}
}
