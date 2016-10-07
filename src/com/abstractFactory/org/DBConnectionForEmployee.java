package com.abstractFactory.org;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import com.pojo.BookEntry;
import com.pojo.Employees;
import com.pojo.NewBook;

public class DBConnectionForEmployee implements KLBooksAdmin
{
	Connection connection = DataBaseEntity.getConnection();
	
	private static DBConnectionForEmployee jdbc;
	
	private DBConnectionForEmployee()
	{
		
	}
	
	public static DBConnectionForEmployee getInstance()
	{
		if (jdbc == null)
		{
			jdbc = new DBConnectionForEmployee();
		}
		return jdbc;
	}
	
	public void closeConnection()
	{
		try
		{
			if (connection != null) connection.close();
		}
		catch (Exception exe)
		{
			System.out.println(exe.toString());
		}
	}
	
	@Override
	public int updateNewBook(int id)
	{
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
	
	@Override
	public int insertNewEmployee(Employees insertNewEmployee)
	{
		PreparedStatement pstmt = null;
		String sql = "insert into faculty_employees (employee_firstname , employee.lastname , employee_password , "
				+ " employee_email , employee_mobileno , employee_dob , employee_designation , employee_creater , status , entry_date) values "
				+ " ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		if (connection != null)
		{
			try
			{
				pstmt = connection.prepareStatement(sql);
				
				pstmt.setString(1, insertNewEmployee.getFname());
				pstmt.setString(2, insertNewEmployee.getLname());
				pstmt.setString(3, insertNewEmployee.getPassword());
				pstmt.setString(4, insertNewEmployee.getEmailId());
				pstmt.setString(5, insertNewEmployee.getMobileNo());
				pstmt.setDate(6, new java.sql.Date(insertNewEmployee.getDob().getTime()));
				pstmt.setString(7, insertNewEmployee.getDesignation());
				pstmt.setInt(8, insertNewEmployee.getCreater_id());
				pstmt.setString(9, insertNewEmployee.getStatus());
				pstmt.setDate(10, new java.sql.Date(insertNewEmployee.getEntryDate().getTime()));
				
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
			
		}
		
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
		// TODO Auto-generated method stub
		return 0;
	}
	
	/*
	 * public int insertDate(Date d1, Date d2, Date d3) { PreparedStatement pstmt = null; String sql =
	 * "insert into datetable (system_date , date_time , time_stamp) values (?,CURDATE(),CURDATE())"; int rows = 0; try
	 * { pstmt = connection.prepareStatement(sql); java.sql.Date d = (java.sql.Date) new Date(); pstmt.setDate(1, d); //
	 * pstmt.setDate(2, (java.sql.Date) d2); // pstmt.setDate(3, (java.sql.Date) d3); rows = pstmt.executeUpdate(); }
	 * catch (SQLException e) { e.printStackTrace(); } return rows; }
	 */
}
