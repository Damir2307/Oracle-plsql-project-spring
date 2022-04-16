package com.example.demo.service.impl;

import com.example.demo.enitity.Users;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.api.UserService;
import com.example.demo.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends BaseServiceImpl<Users, Long, UserRepository> implements UserService {
}
