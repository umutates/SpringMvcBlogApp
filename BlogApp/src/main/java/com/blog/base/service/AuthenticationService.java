package com.blog.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blog.base.entity.User;

@Service
@Transactional(readOnly = true)
public class AuthenticationService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    public InBlogUserDetails loadUserByUsername(String firstName) throws UsernameNotFoundException {

        User user = userService.findName(firstName);

        if (user == null) {
            throw new UsernameNotFoundException("Username is not found");
        }

        return new InBlogUserDetails(user);
    }


}