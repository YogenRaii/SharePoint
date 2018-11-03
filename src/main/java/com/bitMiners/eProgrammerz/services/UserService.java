package com.bitMiners.eProgrammerz.services;

import com.bitMiners.eProgrammerz.domain.User;

import java.util.List;

public interface UserService {
    public User findOne(Long id);

    public List<User> findAll();

    public Long save(User user);

    public Long delete(Long userId);

    User update(User user);

    public User loginUser(String username, String password);

}
