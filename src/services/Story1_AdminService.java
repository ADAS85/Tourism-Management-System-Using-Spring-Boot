package com.spring.boot.project.services;

import org.springframework.stereotype.Component;

@Component
public class Story1_AdminService 
{
	public boolean validateUser(String user, String password) 
	{
	   return user.equalsIgnoreCase("CTS12") && password.equals("welovects");
	}
}

