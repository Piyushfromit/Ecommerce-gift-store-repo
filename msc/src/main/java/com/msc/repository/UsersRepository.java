package com.msc.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.msc.entity.Users;




@Repository
public interface UsersRepository extends  JpaRepository<Users, Integer>{
	
	Optional<Users>  findByEmail (final String email);

}
