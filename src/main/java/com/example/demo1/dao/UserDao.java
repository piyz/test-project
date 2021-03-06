package com.example.demo1.dao;

import com.example.demo1.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Long>{
    User findByEmail(String email);
}
