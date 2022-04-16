package com.example.demo.service.impl;

import com.example.demo.enitity.Playground;
import com.example.demo.repository.PlaygroundRepository;
import com.example.demo.service.api.PlaygroundService;
import com.example.demo.service.base.BaseServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class PlaygroundServiceImpl extends BaseServiceImpl<Playground, Long, PlaygroundRepository> implements PlaygroundService {




}
