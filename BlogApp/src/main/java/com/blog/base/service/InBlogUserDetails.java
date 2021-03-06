package com.blog.base.service;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.blog.base.entity.Role;
import com.blog.base.entity.User;

import java.util.ArrayList;
import java.util.Collection;

public class InBlogUserDetails implements UserDetails {


    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private final boolean accountNonExpired;

    private final boolean accountNonLocked;

    private final Collection<GrantedAuthority> authorities;

    private final boolean credentialsNonExpired;

    private final boolean enabled;

    private final Long id;
    private final String password;
    private final String username;
    private final String firstname;
    private final String lastname;

    public InBlogUserDetails(User user) {

        this.username = user.getEmail();
        this.firstname = user.getFirstName();
        this.lastname = user.getLastName();
        this.password = user.getPassword();
        this.credentialsNonExpired = true;
        this.accountNonExpired = true;
        this.accountNonLocked = true;
        this.authorities = new ArrayList<GrantedAuthority>();
        this.enabled = true;
        this.id = user.getId();

        for (Role role : user.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(role.getName()));
            System.out.println("---------------->Roles: " + role.getName());
        }
    }

    public Long getId() {
        return id;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.authorities;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return this.accountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return this.accountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return this.credentialsNonExpired;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }
}