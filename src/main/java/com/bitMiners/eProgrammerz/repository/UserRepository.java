package com.bitMiners.eProgrammerz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bitMiners.eProgrammerz.domain.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long>{
	@Query("SELECT u FROM User u where u.email =?1 AND u.password =?2")
	public User loginUser(String username, String password);

	@Query("SELECT u FROM User u where u.email =?1")
	public User findUserByEmail(String email);

}
