package com.spring.boot.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spring.boot.project.data.UserDetails;

@Repository
public interface UserRegistration extends JpaRepository<UserDetails,Integer> {
	@Query("SELECT u FROM UserDetails u WHERE u.email = ?1 ")
    public UserDetails findByEmail(String email);
}
