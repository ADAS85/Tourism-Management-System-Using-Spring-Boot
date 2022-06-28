package com.spring.boot.project.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.boot.project.data.UserInquiries;

@Transactional
@Repository
public interface UserInquiry extends JpaRepository<UserInquiries,Integer> {
	
	@Query("update UserInquiries u set u.reply=?1 where u.Inq is not null")
	public void update(String reply,String inq);
}
