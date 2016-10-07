package com.ajax.validation;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.NoneScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

//@Named(value = "registration")
@ManagedBean
public class Registration implements Serializable
{
	private String name;
	private String userId;
	private String passwrod;
	private String mno;
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getUserId()
	{
		return userId;
	}
	
	public void setUserId(String userId)
	{
		this.userId = userId;
	}
	
	public String getPasswrod()
	{
		return passwrod;
	}
	
	public void setPasswrod(String passwrod)
	{
		this.passwrod = passwrod;
	}
	
	public void validateName(FacesContext f, UIComponent c, Object obj)
	{
		String s = (String) obj;
		if (s.length() < 1 || s.equals("") || obj == null) throw new ValidatorException(new FacesMessage("Name cannot be empty."));
	}
	
	public void validateUserId(FacesContext f, UIComponent c, Object obj)
	{
		String s = (String) obj;
		if (s.length() < 3) throw new ValidatorException(new FacesMessage("UserID cannot be empty."));
	}
	
	public void validatePassword(FacesContext f, UIComponent c, Object obj)
	{
		String s = (String) obj;
		if (s.length() < 8) throw new ValidatorException(new FacesMessage("Password must be >= 8 characters. "));
	}
	
	public String getMno()
	{
		return mno;
	}
	
	public void setMno(String mno)
	{
		this.mno = mno;
	}
	
	public void validateModelNo(FacesContext context, UIComponent comp, Object value)
	{
		
		System.out.println("inside validate method");
		
		String mno = (String) value;
		
		if (mno.length() < 4)
		{
			((UIInput) comp).setValid(false);
			
			FacesMessage message = new FacesMessage("Minimum length of model number is 4");
			context.addMessage(comp.getClientId(context), message);
		}
	}
}
