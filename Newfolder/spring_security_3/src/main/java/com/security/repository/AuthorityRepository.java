package com.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.security.entity.Authority;



@Repository
public interface AuthorityRepository extends JpaRepository<Authority, Integer>{
	
	

}
