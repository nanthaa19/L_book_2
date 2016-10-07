package com.abstractFactory.org;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import com.pojo.BookEntry;
import com.pojo.Employees;
import com.pojo.NewBook;

public class DBConnectionForNewEntity implements KLBooksAdmin
{
	Connection connection = DataBaseEntity.getConnection();
	
	private static DBConnectionForNewEntity jdbc2;
	
	private DBConnectionForNewEntity()
	{
		
	}
	
	private DBConnectionForNewEntity getInstance()
	{
		if (jdbc2 == null)
		{
			jdbc2 = new DBConnectionForNewEntity();
		}
		return jdbc2;
	}
	
	public void closeConnection()
	{
		if (connection != null)
		{
			try
			{
				connection.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public int insertNewEmployee(Employees insertNewEmployee)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int updateNewEmployeee(Employees updateAllField)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int deleteEmployee(Employees deleteEmployee)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public boolean checkEmployeeByEmailId(String emailId)
	{
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public boolean checkEmployeeByMobilePhone(String mobileNo)
	{
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public Employees viewEmployees()
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Employees searchEmployee(String employeeName)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Employees aliveEmployees()
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Employees deadEmployees()
	{ 
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Employees getEmployee(String userId, String password)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int insertNewBookToCategory(NewBook addNew)
	{
		
		PreparedStatement pstmt = null;
		int inserCount = 0;
		String sql = "Insert into category (name,day,keyword,series,district,dateOfFirstRelese,type,creater_id,enrty_date) values (?,?,?,?,?,?,?,?)";
		
		/* name, day, keyword, series, district, dateOfFirstRelese, type, creater_id, enrty_date */
		try
		{
			if (connection != null)
			{				
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setString(1, addNew.getName());
				pstmt.setByte(2, addNew.getWeekDay());
				pstmt.setString(3, addNew.getKeyWord());
				pstmt.setByte(4, addNew.getNoOfSeries());
				pstmt.setString(5, addNew.getDistrict());
				pstmt.setDate(6, new java.sql.Date(addNew.getDateOfFirstLaunch().getTime()));
				pstmt.setString(7, addNew.getType());
				pstmt.setInt(8, addNew.getCreaterId());
				pstmt.setDate(9, new java.sql.Date(addNew.getEntryDate().getTime()));
				
				int count = pstmt.executeUpdate();
				
				if (count > 0)
				{
					inserCount = count;
				}
				closeConnection();
			}
			else
			{
				System.out.println("Connection is null in update employee list");
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return inserCount;
		
	}
	
	@Override
	public int updateNewBook(int id)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int deleteNewBook(int id)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public NewBook viewNewBook()
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public NewBook searchNewBook(String bookName)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int insertDailyBookName(BookEntry addEntry)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int updateDailyBookName(int id)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int deleteDailyBookName(int id)
	{
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public BookEntry viewBookEntry()
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public BookEntry viewByDate(Date enterDate)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
}
