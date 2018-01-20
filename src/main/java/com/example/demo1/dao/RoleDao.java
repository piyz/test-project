package com.example.demo1.dao;

import com.example.demo1.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role,Long> {
    Role findByRole(String role);
}
