package com.spring.boot.project.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.spring.boot.project.data.UserFeedbackForm;

@Repository
public interface UserFeedback extends CrudRepository<UserFeedbackForm,Integer> {

}
