package com.msc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.msc.entity.Authority;

@Repository
public interface AuthorityRepository extends JpaRepository<Authority, Integer> {
	
	
	

}
