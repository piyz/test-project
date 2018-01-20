package com.example.demo1.service;

import com.example.demo1.model.User;

public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user);
}
