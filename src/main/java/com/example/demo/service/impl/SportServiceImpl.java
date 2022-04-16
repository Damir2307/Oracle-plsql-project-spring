package com.example.demo.service.impl;


import com.example.demo.enitity.Sport;
import com.example.demo.repository.SportRepository;
import com.example.demo.service.api.SportService;
import com.example.demo.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class SportServiceImpl extends BaseServiceImpl<Sport, Long, SportRepository> implements SportService {

}
