package com.spring.boot.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.boot.project.data.PackageDetails;


@Repository
@Transactional
public interface AdminPackage extends JpaRepository<PackageDetails,Integer> {
	@Query("SELECT u FROM PackageDetails u WHERE u.title = ?1 ")
	public PackageDetails findByTitle(String title);
	
	@Query("SELECT u FROM PackageDetails u WHERE u.duration = ?1 ")
	public List<PackageDetails> findByDuration(Integer duration);
	
	@Query("SELECT u FROM PackageDetails u WHERE u.location = ?1 ")
	public List<PackageDetails> findByLocation(String duration);
	
	@Modifying
	@Query("update PackageDetails u set u.title=?1 where u.title=?2")
	public void updateTitle(String title,String old);
	@Modifying
	@Query("update PackageDetails u set u.description=?1 where u.title=?2")
	public void updateDescription(String description,String old);
	
	@Modifying
	@Query("update PackageDetails u set u.duration=?1 where u.title=?2")
	public void updateDuration(Integer duration,String old);
	
	@Modifying
	@Query("update PackageDetails u set u.price=?1 where u.title=?2")
	public void updatePrice(Integer price,String old);
	
	@Modifying
	@Query("update PackageDetails u set u.location=?1 where u.title=?2")
	public void updateLocation(String Location,String old);
}