package com.bitMiners.eProgrammerz.services.impl;

import com.bitMiners.eProgrammerz.domain.User;
import com.bitMiners.eProgrammerz.repository.UserRepository;
import com.bitMiners.eProgrammerz.services.UserService;
import com.bitMiners.eProgrammerz.services.exceptions.UserAlreadyExistsException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepo;

    @Override
    public User findOne(Long id) {
        return userRepo.findOne(id);
    }

    @Override
    public List<User> findAll() {
        return userRepo.findAll();
    }

    @Override
    public Long save(User user) {
        User userIfExist = userRepo.findUserByEmail(user.getEmail());
        if (userIfExist != null) {
            throw new UserAlreadyExistsException();
        }
        user = userRepo.save(user);
        return user.getId();
    }


    @Override
    public User loginUser(String username, String password) {
        final User user = userRepo.loginUser(username, password);
        if (user != null) {
            //set authorization
            List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
            GrantedAuthority grantedAuthority = new GrantedAuthority() {

                /**
                 *
                 */
                private static final long serialVersionUID = 1L;

                public String getAuthority() {
                    return user.getRole().toString();
                }
            };
            authority.add(grantedAuthority);

            Authentication authentication = new UsernamePasswordAuthenticationToken(user, user.getPassword(), authority);

            SecurityContextHolder.getContext().setAuthentication(authentication);

        }
        return user;
    }

    @Override
    public Long delete(Long userId) {
        userRepo.delete(userId);
        return userId;
    }

    @Override
    public User update(User userToUpdate) {
        return userRepo.saveAndFlush(userToUpdate);
//		return userToUpdate;
    }
}
