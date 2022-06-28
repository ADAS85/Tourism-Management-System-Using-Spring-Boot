package com.spring.boot.project.repository;

import org.springframework.data.repository.CrudRepository;

import com.spring.boot.project.data.UserComplains;


public interface UserComplaint extends CrudRepository<UserComplains,Integer> 
{

}