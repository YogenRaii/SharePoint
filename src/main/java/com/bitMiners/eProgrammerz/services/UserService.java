package com.bitMiners.eProgrammerz.services;

import java.util.List;

import com.bitMiners.eProgrammerz.domain.User;

public interface UserService {
	public User findOne(Long id);

	public List<User> findAll();

	public Long save(User user);

	public Long delete(Long userId);
	
	User update(User user);
	
	public User loginUser(String username, String password);

}
