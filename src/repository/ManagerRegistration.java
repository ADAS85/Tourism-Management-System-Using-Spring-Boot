package com.spring.boot.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spring.boot.project.data.ManagerDetails;


@Repository
public interface ManagerRegistration extends JpaRepository<ManagerDetails,Integer> {
	@Query("SELECT u FROM ManagerDetails u WHERE u.email = ?1 ")
    public ManagerDetails findByEmail(String email);
}