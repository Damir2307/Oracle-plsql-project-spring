package com.example.demo.repository;

import com.example.demo.enitity.Users;
import com.example.demo.repository.base.BaseRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends BaseRepository<Users, Long> {
    Optional<Users> getByPhone(String phone);
    Boolean existsByPhone(String phone);
}
