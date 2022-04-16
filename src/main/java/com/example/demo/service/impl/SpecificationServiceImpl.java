package com.example.demo.service.impl;

import com.example.demo.enitity.Specification;
import com.example.demo.repository.SpecificationRepository;
import com.example.demo.service.api.SpecificationService;
import com.example.demo.service.base.BaseServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class SpecificationServiceImpl extends BaseServiceImpl<Specification, Long, SpecificationRepository> implements SpecificationService {
}
